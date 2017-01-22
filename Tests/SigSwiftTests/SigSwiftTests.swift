import XCTest
@testable import SigSwift

class SigSwiftTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        XCTAssertEqual(SigSwift().text, "Hello, World!")
    }


    static var allTests : [(String, (SigSwiftTests) -> () throws -> Void)] {
        return [
            ("testExample", testExample),
        ]
    }
}
