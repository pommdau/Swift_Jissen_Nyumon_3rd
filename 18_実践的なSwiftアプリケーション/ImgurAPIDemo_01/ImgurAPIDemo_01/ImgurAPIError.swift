//
//  ImgurAPIError.swift
//  ImgurAPIDemo_01
//
//  Created by HIROKI IKEUCHI on 2020/07/20.
//  Copyright © 2020 hikeuchi. All rights reserved.
//

import Foundation

public struct ImgurAPIError : Decodable, Error {
    public var errorInfo: Data
    public var success: Bool
    public var status: Int
    
    public enum CodingKeys : String, CodingKey {
        case errorInfo = "data"
        case success
        case status
    }
    
    public struct Data : Decodable {
        public var error   : String  // "Invalid client_id"
        public var request : String  // "/3/image"
        public var method  : String  // "POST"
    }
}
