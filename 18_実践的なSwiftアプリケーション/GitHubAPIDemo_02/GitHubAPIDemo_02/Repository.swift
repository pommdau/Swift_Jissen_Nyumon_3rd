//
//  Repository.swift
//  GitHubAPIDemo_02
//
//  Created by HIROKI IKEUCHI on 2020/07/24.
//  Copyright © 2020 hikeuchi. All rights reserved.
//

import Foundation

public struct Repository : Decodable {
    public var id       : Int
    public var name     : String
    public var fullName : String
    public var owner    : User
    
    public enum CodingKeys : String, CodingKey {
        case id
        case name
        case fullName = "full_name"  // "full_name"がJSONに使われている
        case owner
    }
}
