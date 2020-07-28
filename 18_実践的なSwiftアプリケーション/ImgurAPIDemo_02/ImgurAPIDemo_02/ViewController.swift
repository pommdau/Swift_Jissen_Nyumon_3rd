//
//  ViewController.swift
//  ImgurAPIDemo_02
//
//  Created by HIROKI IKEUCHI on 2020/07/20.
//  Copyright © 2020 hikeuchi. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    var imgurClient: ImgurClient?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override var representedObject: Any? {
        didSet {
            // Update the view, if already loaded.
        }
    }
    
    @IBAction func authorizeButtonClicked(_ sender: Any) {
        imgurClient = ImgurClient(httpClient: URLSession.shared)
        let userAuthenticationRequest = ImgurAPI.UserAuthentication()
        imgurClient?.openAuthorizePageInBrowser(request: userAuthenticationRequest)
    }
    
    @IBAction func updateAccessTokenButtonClicked(_ sender: Any) {
        // APIクライアントの作成
        let client = ImgurClient(httpClient: URLSession.shared)
        
        // Requestの発行
        let request = ImgurAPI.UpdateAccessToken()
        
        // リクエストの送信
        client.send(request: request) { result in
            switch result {
            case .success(let response):
                OAuthInfo.Imgur.update(for: response)
                print("アクセストークンの更新に成功")
            case .failure(let error):
                print(error)
            }
        }
    }
    
    @IBAction func uploadImageButtonClicked(_ sender: Any) {
        // APIクライアントの作成
        let client = ImgurClient(httpClient: URLSession.shared)
        

        guard let downloadPath = (NSSearchPathForDirectoriesInDomains(.downloadsDirectory, .userDomainMask, true) as [String]).first  else {
            return
        }
        let fileURL = URL(fileURLWithPath: downloadPath).appendingPathComponent("sample_image.png")
        guard let imageData  = NSData(contentsOf: fileURL) else {
            return
        }
        let base64 = imageData.base64EncodedString()
        
        let request = ImgurAPI.UploadImage(imageInBase64String: base64, needAuthentication: true)  // Requestの発行
        
        // リクエストの送信
        client.send(request: request) { result in
            switch result {
            case .success(let response):
                print("画像のアップロード成功")
                print(response)
            case .failure(let error):
                print("画像のアップロード失敗")
                print(error.localizedDescription)
            }
        }
    }
}

