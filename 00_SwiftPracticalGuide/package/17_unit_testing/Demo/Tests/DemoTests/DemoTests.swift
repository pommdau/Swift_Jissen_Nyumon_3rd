import XCTest
@testable import Demo

final class DemoTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(Demo().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
