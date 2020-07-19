//
//  SearchResponse.swift
//  GitHubAPIDemo_01
//
//  Created by HIROKI IKEUCHI on 2020/07/18.
//  Copyright © 2020 hikeuchi. All rights reserved.
//

import Foundation

public struct SearchResponse<Item : Decodable> : Decodable {
    public var totalCount: Int
    public var items: [Item]
    
    public enum CodingKeys : String, CodingKey {
        case totalCount = "total_count"
        case items
    }
}
