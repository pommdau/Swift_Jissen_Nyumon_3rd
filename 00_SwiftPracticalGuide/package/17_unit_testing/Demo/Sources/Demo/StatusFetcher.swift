import Foundation

class StatusFetcher {
    private let httpClient: HTTPClient
    
    init(httpClient: HTTPClient) {
        self.httpClient = httpClient
    }
    
    func fetchStatus(of url: URL, completion: @escaping (Result<Int, Error>) -> Void) {
        httpClient.fetchContents(of: url) { result in
            switch result {
            case .success(_, let urlResponse):
                completion(.success(urlResponse.statusCode))
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
}
