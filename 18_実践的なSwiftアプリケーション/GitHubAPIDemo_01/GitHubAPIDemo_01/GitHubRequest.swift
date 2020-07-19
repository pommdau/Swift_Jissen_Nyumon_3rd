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
    
    func buildURLRequest() -> URLRequest {
        let url = baseURL.appendingPathComponent(path)
        var components = URLComponents(url: url, resolvingAgainstBaseURL: true)
        
        switch method {
        case .get:
            components?.queryItems = queryItems
        default:
            fatalError("Unsupported method \(method)")
        }
        
        var urlRequest = URLRequest(url: url)
        urlRequest.url = components?.url
        urlRequest.httpMethod = method.rawValue
        
        return urlRequest
    }
    
    // URLSessionを通じてサーバから受け取ったData型 + HTTPURLResponse型の数値 = レスポンスの型を表すRespnseの値
    func response(from data: Data,
                  urlResponse: HTTPURLResponse) throws -> Response {

        let decoder = JSONDecoder()
        if (200..<300).contains(urlResponse.statusCode) {
            return try decoder.decode(Response.self, from: data)
        } else {
            throw try decoder.decode(GitHubAPIError.self, from: data)
        }        
    }
    
}
