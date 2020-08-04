//
//  GitHubAPIError.swift
//  GitHubAPIDemo_02
//
//  Created by HIROKI IKEUCHI on 2020/07/24.
//  Copyright © 2020 hikeuchi. All rights reserved.
//

import Foundation

public struct GitHubAPIError : Decodable, Error {
    public struct Error : Decodable {
        public var resource: String
        public var field: String
        public var code: String
    }
    
    public var message: String
    public var errors: [Error]
}
