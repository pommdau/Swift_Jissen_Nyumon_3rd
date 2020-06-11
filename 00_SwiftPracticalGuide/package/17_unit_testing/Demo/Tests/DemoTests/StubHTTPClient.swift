import Foundation
@testable import Demo

final class StubHTTPClient : HTTPClient {
    let result: Result<(Data, HTTPURLResponse), Error>
    
    init(result: Result<(Data, HTTPURLResponse), Error>) {
        self.result = result
    }
    
    func fetchContents(of url: URL, completion: @escaping (Result<(Data, HTTPURLResponse), Error>) -> Void) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) { [result] in
            completion(result)
        }
    }
}
