//
//  ImgurResponse.swift
//  ImgurAPIDemo_02
//
//  Created by HIROKI IKEUCHI on 2020/07/24.
//  Copyright © 2020 hikeuchi. All rights reserved.
//

import Foundation

public struct ImgurResponse<Item : Decodable> : Decodable {
    public var success: Bool
    public var status: Int
    public var data: Item  // レスポンスの詳細情報
}
