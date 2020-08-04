//
//  ViewController.swift
//  ImgurAPIDemo_01
//
//  Created by HIROKI IKEUCHI on 2020/07/19.
//  Copyright © 2020 hikeuchi. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Entry Point

        
        
//        let client = GitHubClient(httpClient: URLSession.shared)
//
//        // Requestの発行
//        let request = GitHubAPI.SearchRepositories(keyword: keyword, body: nil)
//
//        // リクエストの送信
//        client.send(request: request) { result in
//            switch result {
//            case .success(let response):
//                for item in response.items {
//                    print(item.owner.login + "/" + item.name)
//                }
//                exit(0)
//            case .failure(let error):
//                print(error)
//                exit(1)
//            }
//        }
//
//        // タイムアウト時間
//        let timeoutInterval: TimeInterval = 60
//
//        // タイムアウトまでメインスレッドを停止
//        Thread.sleep(forTimeInterval: timeoutInterval)
//
//        // タイムアウト後の処理
//        print("Connection timeout")
//        exit(1)
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

