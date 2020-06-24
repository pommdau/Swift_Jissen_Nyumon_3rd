import XCTest
@testable import Demo

class FailByErrorTests : XCTestCase {
    func testThrows() throws {
        let int = try throwableIntFunction(throwsError: false)
        XCTAssert(int > 0)
    }
}
