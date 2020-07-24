//
//  ViewController.swift
//  ImgurAPIDemo_02
//
//  Created by HIROKI IKEUCHI on 2020/07/20.
//  Copyright © 2020 hikeuchi. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // APIクライアントの作成
        let client = ImgurClient(httpClient: URLSession.shared)
        
        // Requestの発行
        let fileURL = URL(fileURLWithPath: "/Users/ikeuchihiroki/Downloads/sample_image.png")
        guard let imageData  = NSData(contentsOf: fileURL) else {
            return
        }
        let base64 = imageData.base64EncodedString()
        let request = ImgurAPI.UploadImageWithoutAuthentication(imageInBase64String: base64)
        
        // リクエストの送信
        client.send(request: request) { result in
            switch result {
            case .success(let response):
                print(response.data.link)
                exit(0)
            case .failure(let error):
                print(error)
                exit(1)
            }
        }
        
        // タイムアウト時間
        let timeoutInterval: TimeInterval = 60
        
        // タイムアウトまでメインスレッドを停止
        Thread.sleep(forTimeInterval: timeoutInterval)
        
        
        
        
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

