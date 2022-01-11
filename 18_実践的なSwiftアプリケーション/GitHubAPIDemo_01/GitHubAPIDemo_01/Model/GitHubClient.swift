//
//  GitHubClient.swift
//  GitHubAPIDemo_01
//
//  Created by HIROKI IKEUCHI on 2020/07/18.
//  Copyright © 2020 hikeuchi. All rights reserved.
//

import Foundation

// GitHubClient: APIクライアント

public class GitHubClient {
    
    // MARK: - Properties
    
    private let httpClient: HTTPClient  // HTTPClientプロトコルに準拠した型。sendRequestの機能を持つ。
    
    // MARK: - Lifecycles
    
    public init(httpClient: HTTPClient) {
        self.httpClient = httpClient
    }
    
    // MARK: - Helpers
    
    public func send<Request : GitHubRequest>
        (request: Request,
         completion: @escaping (Result<Request.Response, GitHubClientError>) -> Void) {
        let urlRequest = request.buildURLRequest()
        
        httpClient.sendRequest(urlRequest) { result in
            switch result {
            case .success(let data, let urlResponse):
                do {
                    let response = try request.response(from: data, urlResponse: urlResponse)  // responseの型はリクエストの型に依存
                    completion(Result.success(response))
                } catch let error as GitHubAPIError {
                    completion(Result.failure(.apiError(error)))
                } catch {
                    completion(.failure(.responseParseError(error)))
                }
            case .failure(let error):
                completion(.failure(.connectionError(error)))
            }
        }
    }
}
