//
//  Image.swift
//  ImgurAPIDemo_01
//
//  Created by HIROKI IKEUCHI on 2020/07/19.
//  Copyright © 2020 hikeuchi. All rights reserved.
//

import Foundation

// MARK: - PostResponse
struct Image: Codable {
    let data: ImageInfo
    let success: Bool
    let status: Int
}

// MARK: - ImageInfo
struct ImageInfo: Codable {
    let id: String
    let datetime: Int
    let animated: Bool
    let deletehash: String
    let link: String
}
