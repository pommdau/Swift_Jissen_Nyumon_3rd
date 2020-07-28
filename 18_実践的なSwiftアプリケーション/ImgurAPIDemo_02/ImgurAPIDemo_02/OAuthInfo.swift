//
//  OAuthInfo.swift
//  ImgurAPIDemo_02
//
//  Created by HIROKI IKEUCHI on 2020/07/24.
//  Copyright © 2020 hikeuchi. All rights reserved.
//

import Foundation


public final class OAuthInfo {
    public struct Imgur {
        static let clientID = "e6d8ea34904ab93"
        static let clientSecret = "fcbd5690a9ae357f927d31b1f0918b12ec3af24c"
        static let callBackNotificationName = Notification.Name("ReceiveCallBackURLNotification")
        struct UserinfoKey {
            static let callbackURL =  "callbackurl"
        }
        
        public static func postCallBackNotification(for url: URL) {
            NotificationCenter.default.post(name: self.callBackNotificationName,
                                            object: nil,
                                            userInfo:  [self.UserinfoKey.callbackURL: url])
        }
        
        static var accessToken: String {
            get {
                return UserDefaults.standard.string(forKey: "accessToken") ?? ""
            }
            
            set(accessToken) {
                UserDefaults.standard.set(accessToken, forKey: "accessToken")
            }
        }
        
        static var expires: Int {
            get {
                return UserDefaults.standard.integer(forKey: "expires")
            }
            
            set(expires) {
                UserDefaults.standard.set(expires, forKey: "expires")
            }
        }
        
        static var tokenType: String {  // bearer:無記名
            get {
                return UserDefaults.standard.string(forKey: "tokenType") ?? ""
            }
            
            set(tokenType) {
                UserDefaults.standard.set(tokenType, forKey: "tokenType")
            }
        }
        
        static var refreshToken: String {
            get {
                return UserDefaults.standard.string(forKey: "refreshToken") ?? ""
            }
            
            set(refreshToken) {
                UserDefaults.standard.set(refreshToken, forKey: "refreshToken")
            }
        }
        
        static var accountUserName: String {
            get {
                return UserDefaults.standard.string(forKey: "accountUserName") ?? ""
            }
            
            set(accountUserName) {
                UserDefaults.standard.set(refreshToken, forKey: "accountUserName")
            }
        }
        
        static var accountID: String {
            get {
                return UserDefaults.standard.string(forKey: "accountID") ?? ""
            }
            
            set(accountID) {
                UserDefaults.standard.set(refreshToken, forKey: "accountID")
            }
        }

        static func update(for queryItems: [URLQueryItem]) {
            for queryItem in queryItems {
                
                guard let queryValue = queryItem.value else {
                    continue
                }
                
                switch queryItem.name {
                case "access_token":
                    Self.accessToken = queryValue
                case "expires_in":
                    Self.expires = Int(queryValue) ?? 0
                case "token_type":
                    Self.tokenType = queryValue
                case "refresh_token":
                    Self.refreshToken = queryValue
                case "account_username":
                    Self.accountUserName = queryValue
                case "account_id":
                    Self.accountID = queryValue
                default:
                    break
                }
            }
        }
        
        static func update(for response: GenerateAccessTokenResponse) {
            Self.accessToken     = response.accessToken
            Self.refreshToken    = response.refreshToken
            Self.accessToken     = response.accessToken
            Self.accountUserName = response.accountUserName
        }
    }
}
