//
//  ExampleJSON.swift
//  GitHubAPIDemo_01Tests
//
//  Created by HIROKI IKEUCHI on 2020/07/18.
//  Copyright © 2020 hikeuchi. All rights reserved.
//

import GitHubAPIDemo_01


extension User {
    static var exampleJSON: String {
        return """
        {
          "login": "apple",
          "id": 10639145
        }
        """
    }
}


extension Repository {
    static var exampleJSON: String {
        return """
        {
          "id": 44838949,
          "name": "swift",
          "full_name": "apple/swift",
          "owner": {
            "login": "apple",
            "id": 10639145
          }
        }
        """
    }
}

