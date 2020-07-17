//
//  User.swift
//  GitHubAPIDemo_01
//
//  Created by HIROKI IKEUCHI on 2020/07/18.
//  Copyright © 2020 hikeuchi. All rights reserved.
//

import Foundation

public struct User : Decodable {
    public var id: Int
    public var login: String
}
