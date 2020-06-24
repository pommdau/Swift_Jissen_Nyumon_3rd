import XCTest
import Demo

final class TemperatureTests: XCTestCase {
    func testMeltingPoint() {
        let temperature = Temperature(celsius: 0)
        XCTAssertEqual(temperature.celsius, 0)
        XCTAssertEqual(temperature.fahrenheit, 32)
    }
    
    func testBoilingPoint() {
        let temperature = Temperature(celsius: 100)
        XCTAssertEqual(temperature.celsius, 100)
        XCTAssertEqual(temperature.fahrenheit, 212)
    }
}
