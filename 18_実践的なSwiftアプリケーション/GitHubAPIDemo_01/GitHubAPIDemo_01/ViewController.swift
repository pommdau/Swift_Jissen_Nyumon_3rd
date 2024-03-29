//
//  ViewController.swift
//  GitHubAPIDemo_01
//
//  Created by HIROKI IKEUCHI on 2020/07/18.
//  Copyright © 2020 hikeuchi. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Entry Point
        Task {
            
            print("Enter your query here> ", terminator: "")
            
            guard let keyword = readLine(strippingNewline: true) else {
                exit(1)
            }
            
            // APIクライアントの作成
            let client = GitHubClient(httpClient: URLSession.shared)
            
            // Requestの発行
            let request = GitHubAPI.SearchRepositories(keyword: keyword, body: nil)
            
            // リクエストの送信
            let response = try! await client.send(request: request)
            for item in response.items {
                print(item.owner.login + "/" + item.name)
            }
            
            // タイムアウト時間
            let timeoutInterval: TimeInterval = 60
            
            // タイムアウトまでメインスレッドを停止
            Thread.sleep(forTimeInterval: timeoutInterval)
            
            // タイムアウト後の処理
            print("Connection timeout")
            exit(1)
        }
        
    }
    
    override var representedObject: Any? {
        didSet {
            // Update the view, if already loaded.
        }
    }
    
    
}

