//
//  ImgurAPIError.swift
//  ImgurAPIDemo_02
//
//  Created by HIROKI IKEUCHI on 2020/07/24.
//  Copyright © 2020 hikeuchi. All rights reserved.
//

import Foundation

public struct ImgurAPIError : Decodable, Error {
    public struct Error : Decodable {
        public var error: String
        public var request: String
        public var method: String
    }
    
    public var success: Bool
    public var status: Int
    public var data: Error
}
