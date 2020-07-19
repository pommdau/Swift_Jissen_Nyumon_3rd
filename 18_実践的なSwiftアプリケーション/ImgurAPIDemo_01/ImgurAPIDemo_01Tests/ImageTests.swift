//
//  ImageTests.swift
//  ImgurAPIDemo_01Tests
//
//  Created by HIROKI IKEUCHI on 2020/07/19.
//  Copyright © 2020 hikeuchi. All rights reserved.
//

import XCTest
@testable import ImgurAPIDemo_01

class ImageTests: XCTestCase {
    func testDocde() throws {
        let jsonDecoder = JSONDecoder()
        let data = Image.exampleJSON.data(using: .utf8)!
        let image = try jsonDecoder.decode(Image.self, from: data)
        
        XCTAssertEqual(image.success, true)
        XCTAssertEqual(image.status, 200)
        XCTAssertEqual(image.data.id, "orunSTu")
        XCTAssertEqual(image.data.datetime, 1495556889)
        XCTAssertEqual(image.data.animated, false)
        XCTAssertEqual(image.data.deletehash, "x70po4w7BVvSUzZ")
        XCTAssertEqual(image.data.link, "http://i.imgur.com/orunSTu.gif")
    }

}
