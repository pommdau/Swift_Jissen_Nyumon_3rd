//
//  MyUnitTestDemo_01Tests.swift
//  UnitTestDemo_01Tests
//
//  Created by HIROKI IKEUCHI on 2020/07/17.
//  Copyright © 2020 hikeuchi. All rights reserved.
//

import XCTest

@testable import UnitTestDemo_01

class SomeTests: XCTestCase {
    func testWaterMeltingPoint() {
        let temperature = Temperature.waterBoilingPoint
        XCTAssertEqual(temperature.celsius, 100)
//        XCTAssertEqual(temperature.fahrenheit, 212)
    }
    
    func testSomeThing() {
        XCTAssertEqual(1+1, 2)
    }
}
