//
//  UploadingResponse.swift
//  ImgurAPIDemo_02
//
//  Created by HIROKI IKEUCHI on 2020/07/21.
//  Copyright © 2020 hikeuchi. All rights reserved.
//

import Foundation

struct UploadingResponse<Item: Codable>: Codable {
    let item: Item  // アップロードしたアイテムの情報
    let success: Bool
    let status: Int
    
    public enum CodingKeys : String, CodingKey {
        case item = "data"
        case success
        case status
    }
}

// アップロードしたメディア情報
struct Media: Codable {
    let id: String
    let datetime: Int
    let animated: Bool
    let deletehash: String
    let link: String
}

// メディアの削除結果
struct DeletinnResult: Codable {
    let result: Bool
    
    public enum CodingKeys : String, CodingKey {
        case result = "data"
    }
}
