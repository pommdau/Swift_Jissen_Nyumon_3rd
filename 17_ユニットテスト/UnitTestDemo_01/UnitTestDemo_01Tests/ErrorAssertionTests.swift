//
//  ErrorAssertionTests.swift
//  UnitTestDemo_01Tests
//
//  Created by HIROKI IKEUCHI on 2020/07/17.
//  Copyright © 2020 hikeuchi. All rights reserved.
//

import XCTest
@testable import UnitTestDemo_01


final class ErrorAssertionTests: XCTestCase {
    func test() {
        XCTAssertThrowsError(
            try throwableFunction(throwsError: true)
        )
        
        XCTAssertNoThrow(
            try throwableFunction(throwsError: false)
        )
    }
    
    func test_fail() {
//        let optionalValue = Optional(3)
        let optionalValue: Int? = nil
        
        guard let value = optionalValue else {
            XCTFail()
            return
        }
        
        print("🍎\(value)")
        
    }
}
