import Foundation

protocol HTTPClient {
    func fetchContents(of url: URL, completion: @escaping (Result<(Data, HTTPURLResponse), Error>) -> Void)
}
