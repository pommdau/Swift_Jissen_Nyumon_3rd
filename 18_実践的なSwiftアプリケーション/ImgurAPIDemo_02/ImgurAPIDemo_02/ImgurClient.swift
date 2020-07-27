//
//  ImgurClient.swift
//  ImgurAPIDemo_02
//
//  Created by HIROKI IKEUCHI on 2020/07/24.
//  Copyright © 2020 hikeuchi. All rights reserved.
//

import Cocoa

public class ImgurClient {
    private let httpClient: HTTPClient  // HTTPClientプロトコルに準拠した型
    
    public init(httpClient: HTTPClient) {
        self.httpClient = httpClient
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
    
    public func send<Request : ImgurRequest>
        (request: Request,
         completion: @escaping (Result<Request.Response, ImgurClientError>) -> Void) {
        let urlRequest = request.buildURLRequest()
        
        httpClient.sendRequest(urlRequest) { result in
            switch result {
            case .success(let data, let urlResponse):
                do {
                    let response = try request.response(from: data, urlResponse: urlResponse)
                    completion(Result.success(response))
                } catch let error as ImgurAPIError {
                    completion(Result.failure(.apiError(error)))
                } catch {
                    /*
                    let debug = String(data: data, encoding: .utf8)
                     print(debug)
                     */
                    completion(.failure(.responseParseError(error)))
                }
            case .failure(let error):
                completion(.failure(.connectionError(error)))
            }
        }
    }
    
    public func openAuthorizePageInBrowser<Request : ImgurRequest>(request: Request) {
        let urlRequest = request.buildURLRequest()
        guard let url = urlRequest.url else {
            return
        }
        
        if NSWorkspace.shared.open(url) {
            NotificationCenter.default.addObserver(self, selector: #selector(receivedCallbackURL(_:)),
                                                   name: OAuthInfo.Imgur.callBackNotificationName,
                                                   object: nil)
        } else {
            fatalError()
        }
    }
    
    @objc func receivedCallbackURL(_ notification: Notification) {
        NotificationCenter.default.removeObserver(self)

        guard let callbackURL = notification.userInfo?[OAuthInfo.Imgur.UserinfoKey.callbackURL] as? URL else {
            return
        }
        
        var components = URLComponents(url: callbackURL , resolvingAgainstBaseURL: true)
        components?.query = callbackURL.fragment  // フラグメントの追加
        
        guard let queryItems = components?.queryItems else {
            return
        }
        
        for queryItem in queryItems {
            print(queryItem)
        }
        
        OAuthInfo.Imgur.update(for: queryItems)
    }
}
