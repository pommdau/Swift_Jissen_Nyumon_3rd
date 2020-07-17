//
//  WaterBoilingPoint.swift
//  UnitTestDemo_01
//
//  Created by HIROKI IKEUCHI on 2020/07/17.
//  Copyright © 2020 hikeuchi. All rights reserved.
//

import Foundation

extension Temperature {
    internal static var waterBoilingPoint: Temperature {
        return Temperature(celsius: 100)
    }
}
