import XCTest

final class SingleExpressionAssertionTests : XCTestCase {
    func testExample() {
        let value = 5
        XCTAssert(value == 5)
        XCTAssertTrue(value > 0)
        XCTAssertFalse(value < 0)
        
        let nilValue = nil as Int?
        XCTAssertNil(nilValue)
        
        let optionalValue = Optional(1)
        XCTAssertNotNil(optionalValue)
    }
}
