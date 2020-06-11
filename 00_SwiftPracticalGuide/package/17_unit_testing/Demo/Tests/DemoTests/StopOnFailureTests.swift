import XCTest

class StopOnFailureTests : XCTestCase {
    func testWithNil() {
        continueAfterFailure = false
        
        // let optionalValue: Int! = nil
        // XCTAssertNotNil(optionalValue)
        // XCTAssertEqual(optionalValue + 7, 10)
    }
}
