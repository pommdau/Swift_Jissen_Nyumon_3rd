//
//  GitHubRequest.swift
//  GitHubAPIDemo_01
//
//  Created by HIROKI IKEUCHI on 2020/07/18.
//  Copyright © 2020 hikeuchi. All rights reserved.
//

import Foundation

public protocol GitHubRequest {
    associatedtype Response: Decodable  // Responseは連想型。リクエストの型からレスポンスの型を決定できるようにする。
    
    var baseURL: URL { get }
    var path: String { get }  // baesURLからの相対パス
    var method: HTTPMethod { get }
    var queryItems: [URLQueryItem] { get }  // URLQueryItem: クエリ文字列を表すための型
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
    
    // 戻り値のResponseは連想型で、リクエストの型に応じた適切なものになる
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
