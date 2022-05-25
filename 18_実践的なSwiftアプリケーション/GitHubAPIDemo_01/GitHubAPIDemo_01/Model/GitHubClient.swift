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
    
    public func send<Request : GitHubRequest>(request: Request) async throws -> Request.Response {
        
        let data: Data
        let urlResponse: HTTPURLResponse
        do {
            (data, urlResponse) = try await httpClient.sendRequest(request.buildURLRequest())
        } catch {
            throw GitHubClientError.connectionError(error)
        }
        
        do {
            let response = try request.response(from: data, urlResponse: urlResponse)  // responseの型はリクエストの型に依存
            return response
        } catch let error as GitHubAPIError {
            throw GitHubClientError.apiError(error)
        } catch {
            throw GitHubClientError.responseParseError(error)
        }
    }
}
