//
//  SomeTestCase.swift
//  UnitTestDemo_01Tests
//
//  Created by HIROKI IKEUCHI on 2020/07/17.
//  Copyright © 2020 hikeuchi. All rights reserved.
//

import XCTest

class SomeTestCase: XCTestCase {
    override class func setUp() {
        super.setUp()
        print("🍎🍎🍎テストケース全体の事前処理")
    }
    
    override func setUp() {
        super.setUp()
        print("🍎テストごとの事前処理")
    }
    
    override class func tearDown() {
        super.tearDown()
        print("🍎🍎🍎テストケース全体の事後処理")
    }
    
    override func tearDown() {
        super.tearDown()
        print("🍎テストごとの事後処理")
    }
    
    
    func test1() {
        print("🍏テスト1")
    }
    
    func test2() {
        print("🍏テスト2")
    }
    
}
