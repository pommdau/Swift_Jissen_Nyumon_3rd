//
//  ImgurAPI.swift
//  ImgurAPIDemo_02
//
//  Created by HIROKI IKEUCHI on 2020/07/24.
//  Copyright © 2020 hikeuchi. All rights reserved.
//

import Foundation

public final class ImgurAPI {
    
    // 認証用
    public struct UserAuthentication : ImgurRequest {
        // GitHubRewuestが要求する連想型
        public typealias Response = ImgurResponse<Image>
        
        public var method: HTTPMethod {
            return .post
        }
        
        public var path: String {
            return "/oauth2/authorize"
        }
        
        public var queryItems: [URLQueryItem] {
            return [URLQueryItem(name: "client_id",     value: OAuthInfo.Imgur.clientID),
                    URLQueryItem(name: "response_type", value: "token"),
                    URLQueryItem(name: "state",         value: "sample")]
        }
        
        public var header: Dictionary<String, String>? {
            return nil
        }
        
        public var body: Data? {
            return nil
        }
    }
    
    
    public struct UploadImageWithoutAuthentication : ImgurRequest {
        public let imageInBase64String: String  // member wise initializerで代入される
        
        // GitHubRewuestが要求する連想型
        public typealias Response = ImgurResponse<Image>
        
        public var method: HTTPMethod {
            return .post
        }
        
        public var path: String {
            return "/3/image"
        }
        
        public var queryItems: [URLQueryItem] {
            return []
        }
        
        public var header: Dictionary<String, String>? {
            return [
                "Authorization" : "Client-ID \(OAuthInfo.Imgur.clientID)",
                //                "Content-Length" : "",
                "Content-Type" : "application/json",
            ]
        }
        
        public var body: Data? {
            let bodyJSON = [
                "image" : imageInBase64String,
            ]
            
            guard let bodyData = try? JSONSerialization.data(withJSONObject: bodyJSON) else {
                return nil
            }
            
            return bodyData
        }
    }
}
