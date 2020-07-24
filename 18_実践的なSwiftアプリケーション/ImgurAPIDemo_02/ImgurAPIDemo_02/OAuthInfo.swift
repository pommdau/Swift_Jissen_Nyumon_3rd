//
//  OAuthInfo.swift
//  ImgurAPIDemo_02
//
//  Created by HIROKI IKEUCHI on 2020/07/24.
//  Copyright © 2020 hikeuchi. All rights reserved.
//

import Foundation

struct OAuthInfo {
    static let clientID = "e6d8ea34904ab93"
    static let clientSecret = "fcbd5690a9ae357f927d31b1f0918b12ec3af24c"
    /*
    var accessToken: String {
        get {
            return UserDefaults.standard.string(forKey: "accessToken") ?? ""
        }
        
        set(accessToken) {
            UserDefaults.standard.set(accessToken, forKey: "accessToken")
        }
    }
    var expires: Int {
        get {
            return UserDefaults.standard.integer(forKey: "expires")
        }
        
        set(expires) {
            UserDefaults.standard.set(expires, forKey: "expires")
        }
    }
    var tokenType: String {  // bearer:無記名
        get {
            return UserDefaults.standard.string(forKey: "tokenType") ?? ""
        }
        
        set(tokenType) {
            UserDefaults.standard.set(tokenType, forKey: "tokenType")
        }
    }
    
    var refreshToken: String {
        get {
            return UserDefaults.standard.string(forKey: "refreshToken") ?? ""
        }
        
        set(refreshToken) {
            UserDefaults.standard.set(refreshToken, forKey: "refreshToken")
        }
    }
    
    var accountUserName: String {
        get {
            return UserDefaults.standard.string(forKey: "accountUserName") ?? ""
        }
        
        set(accountUserName) {
            UserDefaults.standard.set(refreshToken, forKey: "accountUserName")
        }
    }
    
    var accountID: String {
        get {
            return UserDefaults.standard.string(forKey: "accountID") ?? ""
        }
        
        set(accountID) {
            UserDefaults.standard.set(refreshToken, forKey: "accountID")
        }
    }

    mutating func update(queryItems: [URLQueryItem]) {
        for queryItem in queryItems {
            
            guard let queryValue = queryItem.value else {
                continue
            }
            
            switch queryItem.name {
            case "access_token":
                accessToken = queryValue
            case "expires_in":
                expires = Int(queryValue) ?? 0
            case "token_type":
                tokenType = queryValue
            case "refresh_token":
                refreshToken = queryValue
            case "account_username":
                accountUserName = queryValue
            case "account_id":
                accountID = queryValue
            default:
                break
            }
        }
    }
    */
}
