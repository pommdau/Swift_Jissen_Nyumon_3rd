//
//  StopOnFailureTests.swift
//  UnitTestDemo_01Tests
//
//  Created by HIROKI IKEUCHI on 2020/07/17.
//  Copyright © 2020 hikeuchi. All rights reserved.
//

import XCTest
@testable import UnitTestDemo_01


class StopOnFailureTests: XCTestCase {
    func testWithNil() {
        continueAfterFailure = false
        
        let optionalValue: Int! = nil
        XCTAssertNotNil(optionalValue)
        XCTAssertEqual(optionalValue + 7, 10)
    }
    
    func testThrows() throws {
        let int = try throwableIntFunction(throwsError: true)
        XCTAssert(int > 0)
    }
}
