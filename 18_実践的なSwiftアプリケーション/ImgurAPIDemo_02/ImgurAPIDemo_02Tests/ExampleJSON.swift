//
//  ExampleJSON.swift
//  ImgurAPIDemo_02Tests
//
//  Created by HIROKI IKEUCHI on 2020/07/21.
//  Copyright © 2020 hikeuchi. All rights reserved.
//

import Foundation
@testable import ImgurAPIDemo_02

extension UploadingResponse where Item == Media {
    static var exampleJSONSuccess: String {
        return """
        {
            "data": {
                "id": "qZCWKxg",
                "title": null,
                "description": null,
                "datetime": 1595172252,
                "type": "image/png",
                "animated": false,
                "width": 23,
                "height": 23,
                "size": 1020,
                "views": 0,
                "bandwidth": 0,
                "vote": null,
                "favorite": false,
                "nsfw": null,
                "section": null,
                "account_url": null,
                "account_id": 0,
                "is_ad": false,
                "in_most_viral": false,
                "has_sound": false,
                "tags": [],
                "ad_type": 0,
                "ad_url": "",
                "edited": "0",
                "in_gallery": false,
                "deletehash": "c2LANLNUeU0UANa",
                "name": "",
                "link": "https://i.imgur.com/qZCWKxg.png"
            },
            "success": true,
            "status": 200
        }
        """
    }
    
    static var exampleJSONFailure: String {
        return """
        {
            "data": {
                "error": "Invalid client_id",
                "request": "/3/image",
                "method": "POST"
            },
            "success": false,
            "status": 403
        }
        """
    }
    
}

extension UploadingResponse where Item == Media {
    
}


