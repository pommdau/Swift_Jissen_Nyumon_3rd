import XCTest
@testable import Demo

class StatusFetcherTests : XCTestCase {
    let url = URL(string: "https://example.com")!
    let data = Data()
    
    func makeStubHTTPClient(statusCode: Int) -> StubHTTPClient {
        let urlResponse =  HTTPURLResponse(
            url: url, statusCode: statusCode,
            httpVersion: nil, headerFields: nil)!
        
        return StubHTTPClient(result: .success((data, urlResponse)))
    }
    
    func test200() {
        let httpClient = makeStubHTTPClient(statusCode: 200)
        let statusFetcher = StatusFetcher(httpClient: httpClient)
        let responseExpectation = expectation(description: "waiting for response")
        
        statusFetcher.fetchStatus(of: url) { result in
            switch result {
            case .success(let statusCode):
                XCTAssertEqual(statusCode, 200)
            case .failure:
                XCTFail()
            }
            responseExpectation.fulfill()
        }
        
        waitForExpectations(timeout: 10)
    }
}
