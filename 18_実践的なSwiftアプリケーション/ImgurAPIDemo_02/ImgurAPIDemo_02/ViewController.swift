//
//  ViewController.swift
//  ImgurAPIDemo_02
//
//  Created by HIROKI IKEUCHI on 2020/07/20.
//  Copyright © 2020 hikeuchi. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet weak var imageView: NSImageView!
    @IBOutlet weak var progressIndicator: NSProgressIndicator!
    @IBOutlet weak var uploadingImageButton: NSButton!
    @IBOutlet weak var deletingImageButton: NSButton!
    
    var imgurClient: ImgurClient?  // CallBackURLを受け取るためにプロパティとして保持する
    var image: Image?  // アップロードしたメディア情報
    var isProgressing: Bool = false  // 処理中かどうか
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override var representedObject: Any? {
        didSet {
            // Update the view, if already loaded.
        }
    }
    
    func updateUI() {
        if isProgressing {
            progressIndicator.isHidden = false
            progressIndicator.startAnimation(nil)
            uploadingImageButton.isEnabled = false
        } else {
            progressIndicator.isHidden = true
            progressIndicator.stopAnimation(true)
            uploadingImageButton.isEnabled = true
        }
        
        if let image = image,
            let url = URL(string: image.link) {
            
            if let data = try? Data(contentsOf: url) {
                imageView.image = NSImage(data: data)
            }
            
            deletingImageButton.isEnabled = true
        } else {
            deletingImageButton.isEnabled = false
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
        isProgressing = true
        updateUI()
        client.send(request: request) { result in
            sleep(1)
            self.isProgressing = false
            switch result {
            case .success(let response):
                self.image = response.data
                
                DispatchQueue.main.async {
                    self.updateUI()
                }
                
                print(response)
            case .failure(let error):
                print("画像のアップロード失敗")
                print(error.localizedDescription)
            }
        }
    }
    
    @IBAction func deleteImageButtonClicked(_ sender: Any) {
        updateUI()
    }
}

