//
//  ImgurClient.swift
//  ImgurAPIDemo_02
//
//  Created by HIROKI IKEUCHI on 2020/07/24.
//  Copyright © 2020 hikeuchi. All rights reserved.
//

import Foundation

public class ImgurClient {
    private let httpClient: HTTPClient  // HTTPClientプロトコルに準拠した型
    
    public init(httpClient: HTTPClient) {
        self.httpClient = httpClient
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
                    let debug = String(data: data, encoding: .utf8)
                    print(debug)
                    completion(.failure(.responseParseError(error)))
                }
            case .failure(let error):
                completion(.failure(.connectionError(error)))
            }
        }
    }
}
