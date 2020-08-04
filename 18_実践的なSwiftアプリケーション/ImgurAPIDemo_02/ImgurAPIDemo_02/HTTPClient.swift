//
//  HTTPClient.swift
//  ImgurAPIDemo_02
//
//  Created by HIROKI IKEUCHI on 2020/07/24.
//  Copyright © 2020 hikeuchi. All rights reserved.
//

import Foundation

// HTTPクライアントの最小限の機能をプロトコルで定義する
public protocol HTTPClient {
    func sendRequest(_ urlRequest: URLRequest, completion: @escaping (Result<(Data, HTTPURLResponse), Error>) -> Void)
}

extension URLSession : HTTPClient {
    public func sendRequest(_ urlRequest: URLRequest,
                            completion: @escaping (Result<(Data, HTTPURLResponse), Error>) -> Void) {

        let task = dataTask(with: urlRequest) { data, urlResponse, error in
            switch (data, urlResponse, error) {
            case (_, _, let error?):
                completion(Result.failure(error))
            case (let data?, let urlResponse as HTTPURLResponse, _):
                completion(Result.success((data, urlResponse)))
            default:
                fatalError("invalid response combination \(String(describing: (data, urlResponse, error))).")
            }
        }
        
        task.resume()
    }
}
