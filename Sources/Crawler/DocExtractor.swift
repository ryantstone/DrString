import Models
import Pathos
import SwiftSyntaxParser
import SwiftSyntax

public func extractDocs(fromSource sourcePath: Path) throws -> ([Documentable], String) {
    let source = try sourcePath.readUTF8String()
    let extractor = try DocExtractor(sourceText: source, sourcePath: sourcePath)
    return (try extractor.extractDocs(), source)
}

public func extractDocs(fromSource source: String, sourcePath: Path?) throws -> [Documentable] {
    let extractor = try DocExtractor(sourceText: source, sourcePath: sourcePath)
    return try extractor.extractDocs()
}

final class DocExtractor: SyntaxRewriter {
    private var findings: [Documentable] = []
    private let syntax: SourceFileSyntax
    private let converter: SourceLocationConverter

    init(sourceText: String, sourcePath: Path?) throws {
        let tree = try SyntaxParser.parse(source: sourceText)
        self.syntax = tree
        self.converter = SourceLocationConverter(file: sourcePath.map(String.init(describing:)) ?? "", source: sourceText)
    }

    func extractDocs() throws -> [Documentable] {
        _ = self.visit(syntax)
        return self.findings
    }

    override func visit(_ node: FunctionDeclSyntax) -> DeclSyntax {
        let location = node.startLocation(converter: self.converter)
        let endLocation = node.endLocation(converter: self.converter)
        let parameters = node.parameters
        let signatureText = node.identifier.description
            + "(\(parameters.reduce("") { $0 + ($1.label ?? $1.name) + ":" }))"
        let finding = Documentable(
            path: location.file ?? "",
            startLine: (location.line ?? 0) - 1,
            startColumn: (location.column ?? 0) - 1,
            endLine: (endLocation.line ?? 0) - 1,
            name: signatureText,
            docLines: node.leadingTrivia?.docStringLines ?? [],
            children: [],
            details: Documentable.Details(
                throws: node.throws,
                returnType: node.returnType,
                parameters: parameters)
        )
        self.findings.append(finding)
        return DeclSyntax(node)
    }

    override func visit(_ node: InitializerDeclSyntax) -> DeclSyntax {
        let location = node.startLocation(converter: self.converter)
        let endLocation = node.endLocation(converter: self.converter)
        let parameters = node.parameters.parameterList.map { $0.parameter }
        let signatureText = "init(\(parameters.reduce("") { $0 + ($1.label ?? $1.name) + ":" }))"
        let finding = Documentable(
            path: location.file ?? "",
            startLine: (location.line ?? 0) - 1,
            startColumn: (location.column ?? 0) - 1,
            endLine: (endLocation.line ?? 0) - 1,
            name: signatureText,
            docLines: node.leadingTrivia?.docStringLines ?? [],
            children: [],
            details: .init(
                throws: node.throws,
                returnType: nil,
                parameters: parameters)
        )
        self.findings.append(finding)
        return DeclSyntax(node)
    }
}
