//
//  UploadingResponseTests.swift
//  ImgurAPIDemo_01Tests
//
//  Created by HIROKI IKEUCHI on 2020/07/20.
//  Copyright © 2020 hikeuchi. All rights reserved.
//

import XCTest
@testable import ImgurAPIDemo_01

class UploadingResponseTests: XCTestCase {
    func testDocde() throws {
        let jsonDecoder = JSONDecoder()
        let data = UploadingResponse.exampleJSON.data(using: .utf8)!
        let uploadingResponse = try jsonDecoder.decode(UploadingResponse.self, from: data)
        
        XCTAssertEqual(uploadingResponse.success, true)
        XCTAssertEqual(uploadingResponse.status, 200)
        XCTAssertEqual(uploadingResponse.imageInfo.id, "orunSTu")
        XCTAssertEqual(uploadingResponse.imageInfo.datetime, 1495556889)
        XCTAssertEqual(uploadingResponse.imageInfo.animated, false)
        XCTAssertEqual(uploadingResponse.imageInfo.deletehash, "x70po4w7BVvSUzZ")
        XCTAssertEqual(uploadingResponse.imageInfo.link, "http://i.imgur.com/orunSTu.gif")
    }
}
