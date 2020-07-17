//
//  SingleExpressionAssertionTests.swift
//  UnitTestDemo_01Tests
//
//  Created by HIROKI IKEUCHI on 2020/07/17.
//  Copyright © 2020 hikeuchi. All rights reserved.
//

import XCTest

final class SingleExpressionAssertionTests: XCTestCase {
    func testSample() {
        let value = 5
        XCTAssert(value == 5)
        XCTAssertTrue(value > 0)
        XCTAssertFalse(value < 5)
        
        let nilValue = nil as Int?
        XCTAssertNil(nilValue)
        
        let optionalValue = Optional(1)
        XCTAssertNotNil(optionalValue)
    }
}
