//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import AwsCommonRuntimeKit

public struct FlexibleChecksumsRequestMiddleware<OperationStackInput, OperationStackOutput>: Middleware {

    public let id: String = "FlexibleChecksumsRequestMiddleware"

    let checksumAlgorithm: String?

    public init(checksumAlgorithm: String?) {
        self.checksumAlgorithm = checksumAlgorithm
    }

    public func handle<H>(context: Context,
                          input: SerializeStepInput<OperationStackInput>,
                          next: H) async throws -> OperationOutput<OperationStackOutput>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context {

        if case(.stream(let stream)) = input.builder.body {
            context.attributes.set(
                key: AttributeKeys.isChunkedEligibleStream,
                value: stream.isEligibleForAwsChunkedStreaming()
            )
            if stream.isEligibleForAwsChunkedStreaming() {
                try input.builder.setAwsChunkedHeaders() // x-amz-decoded-content-length
            }
        }

        // Initialize logger
        guard let logger = context.getLogger() else {
            throw ClientError.unknownError("No logger found!")
        }

        guard let checksumString = checksumAlgorithm else {
            logger.info("No checksum provided! Skipping flexible checksums workflow...")
            return try await next.handle(context: context, input: input)
        }

        guard let checksumHashFunction = ChecksumAlgorithm.from(string: checksumString) else {
            logger.info("Found no supported checksums! Skipping flexible checksums workflow...")
            return try await next.handle(context: context, input: input)
        }

        // Determine the header name
        let headerName = "x-amz-checksum-\(checksumHashFunction)"
        logger.debug("Resolved checksum header name: \(headerName)")

        // Get the request
        let request = input.builder

        // Check if any checksum header is already provided by the user
        let checksumHeaderPrefix = "x-amz-checksum-"
        if request.headers.headers.contains(where: {
            $0.name.lowercased().starts(with: checksumHeaderPrefix) &&
            $0.name.lowercased() != "x-amz-checksum-algorithm"
        }) {
            logger.debug("Checksum header already provided by the user. Skipping calculation.")
            return try await next.handle(context: context, input: input)
        }

        func handleNormalPayload(_ data: Data?) throws {

            guard let data else {
                throw ClientError.dataNotFound("Cannot calculate checksum of empty body!")
            }

            if input.builder.headers.value(for: headerName) == nil {
                logger.debug("Calculating checksum")
            }

            // Create checksum instance
            let checksum = checksumHashFunction.createChecksum()

            // Pass data to hash
            try checksum.update(chunk: data)

            // Retrieve the hash
            let hash = try checksum.digest().toBase64String()

            request.updateHeader(name: headerName, value: [hash])
        }

        // Handle body vs handle stream
        switch request.body {
        case .data(let data):
            try handleNormalPayload(data)
        case .stream:
            // Will handle calculating checksum and setting header later
            context.attributes.set(key: AttributeKeys.checksum, value: checksumHashFunction)
            request.updateHeader(name: "x-amz-trailer", value: [headerName])
        case .noStream:
            throw ClientError.dataNotFound("Cannot calculate the checksum of an empty body!")
        }

        return try await next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<OperationStackInput>
    public typealias MOutput = OperationOutput<OperationStackOutput>
    public typealias Context = HttpContext
}
