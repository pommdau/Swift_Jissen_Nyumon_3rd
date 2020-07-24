//
//  ImgurAPI.swift
//  ImgurAPIDemo_02
//
//  Created by HIROKI IKEUCHI on 2020/07/24.
//  Copyright © 2020 hikeuchi. All rights reserved.
//

import Foundation

// TODO: とりあえず非認証版を作成する
public final class ImgurAPI {
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
                "Authorization" : "Client-ID \(OAuthInfo.clientID)",
//                "Content-Length" : "",
                "Content-Type" : "application/json",
            ]
        }
        
        public var body: Encodable? {
            let bodyJSON = [
                "image" : imageInBase64String,
            ]
            
            guard let bodyData = try? JSONSerialization.data(withJSONObject: bodyJSON) else {
                return nil
            }
            
            return bodyData
        }
        
//        public init(keyword: String) {
//            self.keyword = keyword
//        }
    }
}
