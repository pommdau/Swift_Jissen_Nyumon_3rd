//
//  ExampleJSON.swift
//  ImgurAPIDemo_02Tests
//
//  Created by HIROKI IKEUCHI on 2020/08/03.
//  Copyright © 2020 hikeuchi. All rights reserved.
//

import Foundation
@testable import ImgurAPIDemo_02

extension GenerateAccessTokenResponse {
    static var exampleJSON: String {
        return """
        {
            "access_token": "d4468f3948766331f2ef5137ccdd8ca1faf5831d",
            "expires_in": 315360000,
            "token_type": "bearer",
            "scope": null,
            "refresh_token": "59f96cacae28879354a788ab6eb02125d45e5f3a",
            "account_id": 104356397,
            "account_username": "IKEH1024"
        }
        """
    }
}
