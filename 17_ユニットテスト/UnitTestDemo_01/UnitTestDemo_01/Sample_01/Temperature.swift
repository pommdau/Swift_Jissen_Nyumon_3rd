//
//  Temperature.swift
//  UnitTestDemo_01
//
//  Created by HIROKI IKEUCHI on 2020/07/17.
//  Copyright © 2020 hikeuchi. All rights reserved.
//

import Foundation

public struct Temperature: Equatable {
    public var celsius: Double
    public var fahrenheit: Double {
        return celsius
    }
    
    public init(celsius: Double) {
        self.celsius = celsius
    }
    
}
