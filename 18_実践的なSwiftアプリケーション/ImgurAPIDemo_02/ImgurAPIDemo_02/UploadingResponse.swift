//
//  UploadingResponse.swift
//  ImgurAPIDemo_02
//
//  Created by HIROKI IKEUCHI on 2020/07/21.
//  Copyright © 2020 hikeuchi. All rights reserved.
//

import Foundation

struct UploadingResponse: Codable {
    let media: Media  // アップロードしたアイテムの情報
    let success: Bool
    let status: Int
    
    public enum CodingKeys : String, CodingKey {
        case media = "data"
        case success
        case status
    }
}

struct Media: Codable {
    let id: String
    let datetime: Int
    let animated: Bool
    let deletehash: String
    let link: String
}
