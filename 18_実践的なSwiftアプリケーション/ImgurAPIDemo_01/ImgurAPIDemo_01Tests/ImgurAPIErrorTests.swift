//
//  ImgurAPIErrorTests.swift
//  ImgurAPIDemo_01Tests
//
//  Created by HIROKI IKEUCHI on 2020/07/20.
//  Copyright © 2020 hikeuchi. All rights reserved.
//

import XCTest
@testable import ImgurAPIDemo_01

class ImgurAPIErrorTests: XCTestCase {
    func testDocde() throws {
        let jsonDecoder = JSONDecoder()
        let data = ImgurAPIError.exampleJSON.data(using: .utf8)!
        let error = try jsonDecoder.decode(ImgurAPIError.self, from: data)
        
        XCTAssertEqual(error.success, false)
        XCTAssertEqual(error.status, 403)
        XCTAssertEqual(error.errorInfo.error, "Invalid client_id")
        XCTAssertEqual(error.errorInfo.request, "/3/image")
        XCTAssertEqual(error.errorInfo.method, "POST")
    }
}
