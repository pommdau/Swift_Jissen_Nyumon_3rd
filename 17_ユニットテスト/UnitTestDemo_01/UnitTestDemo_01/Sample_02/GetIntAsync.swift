//
//  GetIntAsync.swift
//  UnitTestDemo_01
//
//  Created by HIROKI IKEUCHI on 2020/07/17.
//  Copyright © 2020 hikeuchi. All rights reserved.
//

import Foundation
import Dispatch

func getIntAsync(completion: @escaping (Int) -> Void) {
    DispatchQueue.main.asyncAfter(deadline: .now()+1) {
        completion(4)
    }
}
