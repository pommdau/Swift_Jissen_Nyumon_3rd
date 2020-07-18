//
//  GitHubAPI.swift
//  GitHubAPIDemo_01
//
//  Created by HIROKI IKEUCHI on 2020/07/18.
//  Copyright © 2020 hikeuchi. All rights reserved.
//

import Foundation

public final class GitHubAPI {
    public struct SearchRepositories : GitHubRequest {
        public let keyword: String
        
        // GitHubRewuestが要求する連想型
        public typealias Response = SearchResponse<Repository>
        
        public var method: HTTPMethod {
            return .get
        }
        
        public var path: String {
            return "/search/repositories"
        }
        
        public var queryItems: [URLQueryItem] {
            return [URLQueryItem(name: "q", value: keyword)]
        }
        
        public var body: Encodable?
    }
    
    public struct SearchUsers : GitHubRequest {
        public let keyword: String
        
        // GitHubRewuestが要求する連想型
        public typealias Response = SearchResponse<User>
        
        public var method: HTTPMethod {
            return .get
        }
        
        public var path: String {
            return "/search/users"
        }
        
        public var queryItems: [URLQueryItem] {
            return [URLQueryItem(name: "q", value: keyword)]
        }
        
        public var body: Encodable?
    }
}
