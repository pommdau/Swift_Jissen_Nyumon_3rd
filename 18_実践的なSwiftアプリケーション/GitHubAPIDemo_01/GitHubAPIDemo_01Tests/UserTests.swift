//
//  UserTests.swift
//  GitHubAPIDemo_01Tests
//
//  Created by HIROKI IKEUCHI on 2020/07/18.
//  Copyright © 2020 hikeuchi. All rights reserved.
//

import Foundation
import XCTest
import GitHubAPIDemo_01

class UserTests: XCTestCase {
    func testDecode() throws {
        let jsonDecoder = JSONDecoder()
        let data = User.exampleJSON.data(using: .utf8)!
        let user = try jsonDecoder.decode(User.self, from: data)
        XCTAssertEqual(user.login, "apple")
        XCTAssertEqual(user.id, 10639145)
    }
}
