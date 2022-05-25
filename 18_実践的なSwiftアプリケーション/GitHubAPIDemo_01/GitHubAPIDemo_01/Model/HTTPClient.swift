import Foundation

// HTTPクライアントの最小限の機能をプロトコルで定義する
public protocol HTTPClient {
    func sendRequest(_ urlRequest: URLRequest) async throws -> (Data, HTTPURLResponse)
}

// MARK: - URLSession + HTTPClient

// URLSessionクラスとHTTPクライアントとして使えるようにする
extension URLSession : HTTPClient {
    
    public func sendRequest(_ urlRequest: URLRequest) async throws -> (Data, HTTPURLResponse) {
        let (data, response) = try await data(for: urlRequest)
        guard let urlResponse = response as? HTTPURLResponse else {
            throw GitHubClientError.httpURLResponseCastError
        }
        
        return (data, urlResponse)
    }
}
