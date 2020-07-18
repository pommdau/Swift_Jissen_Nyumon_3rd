//
//  GitHubRequest.swift
//  GitHubAPIDemo_01
//
//  Created by HIROKI IKEUCHI on 2020/07/18.
//  Copyright © 2020 hikeuchi. All rights reserved.
//

import Foundation

public protocol GitHubRequest {
    associatedtype Response: Decodable  // Responseは連想型
    
    var baseURL: URL { get }
    var path: String { get }
    var method: HTTPMethod { get }
    var queryItems: [URLQueryItem] { get }
    var body: Encodable? { get }  // HTTP bodyに設定するパラメータ
}


public extension GitHubRequest {
    var baseURL: URL {  // デフォルト実装
        return URL(string: "https://api.github.com")!
    }
}
