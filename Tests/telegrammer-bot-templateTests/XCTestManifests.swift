import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(telegrammer_bot_templateTests.allTests),
    ]
}
#endif
