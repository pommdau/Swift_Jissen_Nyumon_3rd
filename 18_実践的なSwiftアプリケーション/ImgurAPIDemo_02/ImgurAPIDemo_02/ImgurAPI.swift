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
    
    // 認証用
     public struct UpdateAccessToken : ImgurRequest {
        public typealias Response = GenerateAccessTokenResponse
         
         public var method: HTTPMethod {
             return .post
         }
         
         public var path: String {
             return "/oauth2/token"
         }
        
         public var queryItems: [URLQueryItem] {
            return []
        }
         
        public var header: Dictionary<String, String>? {
            let bodySize = body?.count ?? 0
            return [
                "Content-Length" : "\(bodySize)",
                "Content-Type"  : "application/json",
            ]
        }
        
        public var body: Data? {
            let bodyJSON = [
                "refresh_token" : OAuthInfo.Imgur.refreshToken,
                "client_id"     : OAuthInfo.Imgur.clientID,
                "client_secret" : OAuthInfo.Imgur.clientSecret,
                "grant_type"    : "refresh_token",
            ]
            
            guard let bodyData = try? JSONSerialization.data(withJSONObject: bodyJSON) else {
                return nil
            }
            
            return bodyData
        }
    }
    
    public struct UploadImageWithoutAuthentication : ImgurRequest {
        public let imageInBase64String: String  // member wise initializerで代入される
        
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
