//
//  GetIntAsyncTests.swift
//  UnitTestDemo_01Tests
//
//  Created by HIROKI IKEUCHI on 2020/07/17.
//  Copyright © 2020 hikeuchi. All rights reserved.
//

import XCTest
@testable import UnitTestDemo_01

class GetIntAsyncTests: XCTestCase {
    func testAsync() {
        let asyncExpectation = expectation(description: "async")
        var optionalValue: Int?
        
        getIntAsync { value in
            optionalValue = value
            asyncExpectation.fulfill()
        }
        
        wait(for: [asyncExpectation], timeout: 3)
        XCTAssertEqual(optionalValue, 4)

    }
    
}
