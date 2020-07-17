//
//  ThrowableFunction.swift
//  UnitTestDemo_01
//
//  Created by HIROKI IKEUCHI on 2020/07/17.
//  Copyright © 2020 hikeuchi. All rights reserved.
//

import Foundation

func throwableFunction(throwsError: Bool) throws {
    if throwsError {
        throw SomeError()
    }
}

func throwableIntFunction(throwsError: Bool) throws -> Int {
    if throwsError {
        throw SomeError()
    }
    
    return 7
}
