//
//  ExampleJSON.swift
//  ImgurAPIDemo_01Tests
//
//  Created by HIROKI IKEUCHI on 2020/07/19.
//  Copyright © 2020 hikeuchi. All rights reserved.
//

import Foundation
@testable import ImgurAPIDemo_01

extension Image {
    static var exampleJSON: String {
        return """
        {
          "data": {
            "id": "orunSTu",
            "title": null,
            "description": null,
            "datetime": 1495556889,
            "type": "image/gif",
            "animated": false,
            "width": 1,
            "height": 1,
            "size": 42,
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
            "tags": [],
            "ad_type": 0,
            "ad_url": "",
            "in_gallery": false,
            "deletehash": "x70po4w7BVvSUzZ",
            "name": "",
            "link": "http://i.imgur.com/orunSTu.gif"
          },
          "success": true,
          "status": 200
        }
        """
    }
}
