//
//  GitHubAPIErrorTests.swift
//  GitHubAPIDemo_01Tests
//
//  Created by HIROKI IKEUCHI on 2020/07/18.
//  Copyright © 2020 hikeuchi. All rights reserved.
//

import Foundation
import XCTest
import GitHubAPIDemo_01

class GitHubAPIErrorTests: XCTestCase {
    func testDecode() throws {
        let jsonDecoder = JSONDecoder()
        let data = GitHubAPIError.exampleJSON.data(using: .utf8)!
        let error = try jsonDecoder.decode(GitHubAPIError.self, from: data)
        
        XCTAssertEqual(error.message, "Validation Failed")
        let firstError = error.errors.first
        XCTAssertEqual(firstError?.resource, "Search")
        XCTAssertEqual(firstError?.field, "q")
        XCTAssertEqual(firstError?.code, "missing")
    }
}
