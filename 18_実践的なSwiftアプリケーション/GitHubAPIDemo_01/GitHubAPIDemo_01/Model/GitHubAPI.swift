//
//  GitHubAPI.swift
//  GitHubAPIDemo_01
//
//  Created by HIROKI IKEUCHI on 2020/07/18.
//  Copyright © 2020 hikeuchi. All rights reserved.
//

import Foundation

// GitHubAPIのようにグルーピングすることで、GitHubAPI.SearchRepositoriesのようにアクセスできる
// アプリケーションの内部で複数のサービスが提供するAPIを使用する際に効果的
public final class GitHubAPI {
    
    // MARK: - SearchRepositories
    
    public struct SearchRepositories : GitHubRequest {
        
        // MARK: - Properties
                
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
        
        // MARK: - Lifecycles
                
//        public init(keyword: String) {
//            self.keyword = keyword
//        }
    }
    
    // MARK: - SearchUsers
    
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
