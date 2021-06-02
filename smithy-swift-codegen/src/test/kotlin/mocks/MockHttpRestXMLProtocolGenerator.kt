
import mocks.MockHttpResponseBindingErrorGenerator
import software.amazon.smithy.aws.traits.protocols.RestXmlTrait
import software.amazon.smithy.model.shapes.MemberShape
import software.amazon.smithy.model.shapes.Shape
import software.amazon.smithy.model.shapes.ShapeId
import software.amazon.smithy.model.traits.TimestampFormatTrait
import software.amazon.smithy.swift.codegen.SwiftWriter
import software.amazon.smithy.swift.codegen.integration.CodingKeysGenerator
import software.amazon.smithy.swift.codegen.integration.DefaultCodingKeysGenerator
import software.amazon.smithy.swift.codegen.integration.DefaultHttpProtocolCustomizations
import software.amazon.smithy.swift.codegen.integration.HttpBindingProtocolGenerator
import software.amazon.smithy.swift.codegen.integration.HttpProtocolTestGenerator
import software.amazon.smithy.swift.codegen.integration.HttpProtocolUnitTestErrorGenerator
import software.amazon.smithy.swift.codegen.integration.HttpProtocolUnitTestGenerator
import software.amazon.smithy.swift.codegen.integration.HttpProtocolUnitTestRequestGenerator
import software.amazon.smithy.swift.codegen.integration.HttpProtocolUnitTestResponseGenerator
import software.amazon.smithy.swift.codegen.integration.ProtocolGenerator
import software.amazon.smithy.swift.codegen.integration.httpResponse.HttpResponseGeneratable
import software.amazon.smithy.swift.codegen.integration.httpResponse.HttpResponseGenerator
import software.amazon.smithy.swift.codegen.integration.serde.DynamicNodeEncodingGeneratorStrategy
import software.amazon.smithy.swift.codegen.integration.serde.json.StructEncodeXMLGenerator
import software.amazon.smithy.swift.codegen.model.ShapeMetadata

class MockRestXMLHttpProtocolCustomizations() : DefaultHttpProtocolCustomizations()

class MockHttpRestXMLProtocolGenerator : HttpBindingProtocolGenerator() {
    override val defaultContentType: String = "application/xml"
    override val defaultTimestampFormat: TimestampFormatTrait.Format = TimestampFormatTrait.Format.DATE_TIME
    override val protocol: ShapeId = RestXmlTrait.ID
    override val httpProtocolClientGeneratorFactory = TestHttpProtocolClientGeneratorFactory()
    override val httpProtocolCustomizable = MockRestXMLHttpProtocolCustomizations()
    override val codingKeysGenerator: CodingKeysGenerator = DefaultCodingKeysGenerator()
    override val httpResponseGenerator: HttpResponseGeneratable = HttpResponseGenerator(
        serviceErrorProtocolSymbol,
        unknownServiceErrorSymbol,
        defaultTimestampFormat,
        MockHttpResponseBindingErrorGenerator()
    )

    override fun renderStructEncode(
        ctx: ProtocolGenerator.GenerationContext,
        shapeContainingMembers: Shape,
        shapeMetadata: Map<ShapeMetadata, Any>,
        members: List<MemberShape>,
        writer: SwiftWriter,
        defaultTimestampFormat: TimestampFormatTrait.Format,
    ) {
        val encoder = StructEncodeXMLGenerator(ctx, shapeContainingMembers, members, writer, defaultTimestampFormat)
        encoder.render()
        val xmlNamespaces = encoder.xmlNamespaces
        DynamicNodeEncodingGeneratorStrategy(ctx, shapeContainingMembers, xmlNamespaces).renderIfNeeded()
    }

    override fun generateProtocolUnitTests(ctx: ProtocolGenerator.GenerationContext) {
        val requestTestBuilder = HttpProtocolUnitTestRequestGenerator.Builder()
        val responseTestBuilder = HttpProtocolUnitTestResponseGenerator.Builder()
        val errorTestBuilder = HttpProtocolUnitTestErrorGenerator.Builder()

        HttpProtocolTestGenerator(
            ctx,
            requestTestBuilder,
            responseTestBuilder,
            errorTestBuilder,
            httpProtocolCustomizable,
            HttpProtocolUnitTestGenerator.SerdeContext("XMLEncoder()", "XMLDecoder()")
        ).generateProtocolTests()
    }
}