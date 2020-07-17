//
//  URLSession+HTTPClient.swift
//  UnitTestDemo_02
//
//  Created by HIROKI IKEUCHI on 2020/07/17.
//  Copyright © 2020 hikeuchi. All rights reserved.
//

import Foundation

public protocol HTTPClient {
    func fetchContents(of url: URL,
                       completion: @escaping (Result<(Data, HTTPURLResponse), Error>) -> Void)
}

extension URLSession: HTTPClient {
    public func fetchContents(of url: URL,
                              completion: @escaping (Result<(Data, HTTPURLResponse), Error>) -> Void) {
        let task = dataTask(with: url) { urlResponse, data, error in
            
            switch (urlResponse, data, error) {
            case (let data?, let urlResponse as HTTPURLResponse, _):
                completion(.success((data, urlResponse)))
            case (_, _, let error?):
                completion(.failure(error))
            default:
                fatalError()
            }
            
        }
        
        task.resume()
    }
}
