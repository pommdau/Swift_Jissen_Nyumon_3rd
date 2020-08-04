//
//  User.swift
//  GitHubAPIDemo_02
//
//  Created by HIROKI IKEUCHI on 2020/07/24.
//  Copyright © 2020 hikeuchi. All rights reserved.
//

import Foundation

public struct User : Decodable {
    public var id: Int
    public var login: String
}
