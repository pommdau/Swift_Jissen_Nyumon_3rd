//
//  UploadingResponseTests.swift
//  ImgurAPIDemo_02Tests
//
//  Created by HIROKI IKEUCHI on 2020/07/21.
//  Copyright © 2020 hikeuchi. All rights reserved.
//

import Foundation
import XCTest
@testable import ImgurAPIDemo_02

class UploadingResponseTests: XCTestCase {
    func testDocdeSuccessedResponse() throws {
        let jsonDecoder = JSONDecoder()
        let data = UploadingResponse.exampleJSONSuccess.data(using: .utf8)!
        let uploadingResponse = try jsonDecoder.decode(UploadingResponse.self, from: data)
        
        XCTAssertEqual(uploadingResponse.success, true)
        XCTAssertEqual(uploadingResponse.status, 200)
        XCTAssertEqual(uploadingResponse.media.id, "qZCWKxg")
        XCTAssertEqual(uploadingResponse.media.datetime, 1595172252)
        XCTAssertEqual(uploadingResponse.media.animated, false)
        XCTAssertEqual(uploadingResponse.media.deletehash, "c2LANLNUeU0UANa")
        XCTAssertEqual(uploadingResponse.media.link, "https://i.imgur.com/qZCWKxg.png")
    }
    
//    func testDocdeFailedResponse() throws {
//        let jsonDecoder = JSONDecoder()
//        let data = UploadingResponse.exampleJSONFailure.data(using: .utf8)!
//        let uploadingResponse = try jsonDecoder.decode(UploadingResponse.self, from: data)
//
//        XCTAssertEqual(uploadingResponse.success, true)
//        XCTAssertEqual(uploadingResponse.status, 200)
//        XCTAssertEqual(uploadingResponse.error
//    }
}
