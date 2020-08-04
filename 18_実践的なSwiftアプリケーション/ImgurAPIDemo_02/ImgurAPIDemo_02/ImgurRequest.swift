//
//  ImgurRequest.swift
//  ImgurAPIDemo_02
//
//  Created by HIROKI IKEUCHI on 2020/07/24.
//  Copyright © 2020 hikeuchi. All rights reserved.
//

import Foundation

public protocol ImgurRequest {
    associatedtype Response: Decodable  // Responseは連想型
    
    var baseURL     : URL                         { get }
    var path        : String                      { get }  // baesURLからの相対パス
    var method      : HTTPMethod                  { get }
    var queryItems  : [URLQueryItem]              { get }
    var header      : Dictionary<String, String>? { get }
    var body        : Data?                       { get }  // HTTP bodyに設定するパラメータ
}


public extension ImgurRequest {
    var baseURL: URL {  // デフォルト実装
        return URL(string: "https://api.imgur.com")!
    }
    
    func buildURLRequest() -> URLRequest {
        let url = baseURL.appendingPathComponent(path)
        
        var urlRequest = URLRequest(url: url)
        
        var components = URLComponents(url: url, resolvingAgainstBaseURL: true)  // クエリを含んだURLを作成する用
        switch method {
        case .get:
            components?.queryItems = queryItems
        case .post, .delete:
            components?.queryItems = queryItems
            
            // ヘッダの設定
            if let header = header {
                for (key, value) in header {
                    urlRequest.addValue(value, forHTTPHeaderField: key)
                }
            }
            
            // ボディの設定
            if let body = body {
                urlRequest.httpBody = body
            }
        default:
            fatalError("Unsupported method \(method)")
        }
        
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
            throw try decoder.decode(ImgurAPIError.self, from: data)
        }
    }
}
