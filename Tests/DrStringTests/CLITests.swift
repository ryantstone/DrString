import ArgumentParser
@testable import DrString
import Pathos
import XCTest

final class CLITests: XCTestCase {
    private let directory: String = { "/" + #file.split(separator: "/").dropLast().joined(separator: "/") }()

    func testConfigFileOptionsAreProperlyParsedForCheckSubcommand() throws {
        let configFilePath = join(paths: self.directory, "Fixtures", "config0.toml")
        let arguments = ["check", "--config-file", configFilePath]
        let parsedCommand = try Main.parseAsRoot(arguments)
        let command = try Command(command: parsedCommand)
        XCTAssertEqual(command?.config?.firstKeywordLetter, .lowercase)
        XCTAssertEqual(command?.config?.separatedSections, [.description])
    }

    func testCommandLineArgumentOverridesConfigFileOptionForCheckSubcommand() throws {
        let configFilePath = join(paths: self.directory, "Fixtures", "config0.toml")
        let arguments = ["check", "--config-file", configFilePath, "--first-letter-uppercase"]
        let parsedCommand = try Main.parseAsRoot(arguments)
        let command = try Command(command: parsedCommand)
        XCTAssertEqual(command?.config?.firstKeywordLetter, .uppercase)
        XCTAssertEqual(command?.config?.separatedSections, [.description])
    }

    func testConfigFileOptionsAreProperlyParsedForFormatSubcommand() throws {
        let configFilePath = join(paths: self.directory, "Fixtures", "config0.toml")
        let arguments = ["format", "--config-file", configFilePath]
        let parsedCommand = try Main.parseAsRoot(arguments)
        let command = try Command(command: parsedCommand)
        XCTAssertEqual(command?.config?.firstKeywordLetter, .lowercase)
        XCTAssertEqual(command?.config?.separatedSections, [.description])
    }

    func testCommandLineArgumentOverridesConfigFileOptionForFormatSubcommand() throws {
        let configFilePath = join(paths: self.directory, "Fixtures", "config0.toml")
        let arguments = ["format", "--config-file", configFilePath, "--first-letter-uppercase"]
        let parsedCommand = try Main.parseAsRoot(arguments)
        let command = try Command(command: parsedCommand)
        XCTAssertEqual(command?.config?.firstKeywordLetter, .uppercase)
        XCTAssertEqual(command?.config?.separatedSections, [.description])
    }

    func testStartLineIsProperlyParsed() throws {
        let line = 42
        let arguments = ["format", "--start-line", "\(line)", "-i", "a"]
        let parsedCommand = try Main.parseAsRoot(arguments)
        let command = try Command(command: parsedCommand)
        XCTAssertEqual(command?.config?.startLine, .some(line))
    }

    func testEndLineIsProperlyParsed() throws {
        let line = 42
        let arguments = ["format", "--end-line", "\(line)", "-i", "a"]
        let parsedCommand = try Main.parseAsRoot(arguments)
        let command = try Command(command: parsedCommand)
        XCTAssertEqual(command?.config?.endLine, .some(line))
    }
}
