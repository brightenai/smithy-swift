package software.amazon.smithy.swift.codegen.integration

import software.amazon.smithy.codegen.core.CodegenException
import software.amazon.smithy.codegen.core.Symbol
import software.amazon.smithy.model.knowledge.HttpBinding
import software.amazon.smithy.model.shapes.ShapeType
import software.amazon.smithy.model.traits.EnumTrait
import software.amazon.smithy.model.traits.StreamingTrait
import software.amazon.smithy.swift.codegen.Middleware
import software.amazon.smithy.swift.codegen.SwiftDependency
import software.amazon.smithy.swift.codegen.SwiftWriter

class HttpBodyMiddleware(
    private val writer: SwiftWriter,
    private val ctx: ProtocolGenerator.GenerationContext,
    private val symbol: Symbol,
    private val requestBindings: List<HttpBindingDescriptor>
) : Middleware(writer, symbol) {

    override val typeName = "${symbol.name}BodyMiddleware"
    override val inputType = Symbol
        .builder()
        .name("SerializeInput<${symbol.name}>")
        .addDependency(SwiftDependency.CLIENT_RUNTIME)
        .build()

    override val outputType = Symbol
        .builder()
        .name("SerializeInput<${symbol.name}>")
        .addDependency(SwiftDependency.CLIENT_RUNTIME)
        .build()

    override fun generateMiddlewareClosure() {
        renderEncodedBody()
        // to be handled in next pr
        // super.generateMiddlewareClosure()
    }

    override fun generateInit() {
        writer.write("public init() {}")
    }

    private fun renderEncodedBody() {
        val httpPayload = requestBindings.firstOrNull { it.location == HttpBinding.Location.PAYLOAD }
        if (httpPayload != null) {
            renderExplicitPayload(httpPayload)
        } else {
            renderSerializablePayload()
        }
    }

    private fun renderSerializablePayload() {
        writer.openBlock("do {", "} catch let err {") {
            writer.openBlock("if try !input.operationInput.allPropertiesAreNull() {", "}") {
                writer.write("let encoder = context.getEncoder()")
                writer.write("let data = try encoder.encode(input.operationInput)")
                writer.write("let body = HttpBody.data(data)")
                writer.write("input.builder.withHeader(name: \"Content-Length\", value: String(data.count))")
                writer.write("input.builder.withBody(body)")
            }
        }
        writer.indent()
        writer.write("return .failure(err)")
        writer.dedent()
        writer.write("}")
    }

    private fun renderExplicitPayload(binding: HttpBindingDescriptor) {
        val memberName = ctx.symbolProvider.toMemberName(binding.member)
        val target = ctx.model.expectShape(binding.member.target)
        writer.openBlock("if let $memberName = input.operationInput.$memberName {", "}") {
            when (target.type) {
                ShapeType.BLOB -> {
                    // FIXME handle streaming properly
                    val isBinaryStream =
                        ctx.model.getShape(binding.member.target).get().hasTrait(StreamingTrait::class.java)
                    writer.write("let data = \$L", memberName)
                    writer.write("let body = HttpBody.data(data)")
                    writer.write("input.builder.withHeader(name: \"Content-Length\", value: String(data.count))")
                    writer.write("input.builder.withBody(body)")
                }
                ShapeType.STRING -> {
                    val contents = if (target.hasTrait(EnumTrait::class.java)) {
                        "$memberName.rawValue"
                    } else {
                        memberName
                    }
                    writer.write("let data = \$L.data(using: .utf8)", contents)
                    writer.write("let body = HttpBody.data(data)")
                    writer.write("input.builder.withHeader(name: \"Content-Length\", value: String(data.count))")
                    writer.write("input.builder.withBody(body)")
                }
                ShapeType.STRUCTURE, ShapeType.UNION -> {
                    // delegate to the member encode function
                    writer.openBlock("do {", "} catch let err {") {
                        writer.write("let encoder = context.getEncoder()")
                        writer.write("let data = try encoder.encode(\$L)", memberName)
                        writer.write("let body = HttpBody.data(data)")
                        writer.write("input.builder.withHeader(name: \"Content-Length\", value: String(data.count))")
                        writer.write("input.builder.withBody(body)")
                    }
                    writer.indent()
                    writer.write("return .failure(err)")
                    writer.dedent()
                    writer.write("}")
                }
                ShapeType.DOCUMENT -> {
                    writer.openBlock("do {", "} catch let err {") {
                        writer.write("let encoder = context.getEncoder()")
                        writer.write("let data = try encoder.encode(\$L)", memberName)
                        writer.write("let body = HttpBody.data(data)")
                        writer.write("input.builder.withHeader(name: \"Content-Length\", value: String(data.count))")
                        writer.write("input.builder.withBody(body)")
                    }
                    writer.indent()
                    writer.write("return .failure(err)")
                    writer.dedent()
                    writer.write("}")
                }
                else -> throw CodegenException("member shape ${binding.member} serializer not implemented yet")
            }
        }
    }
}