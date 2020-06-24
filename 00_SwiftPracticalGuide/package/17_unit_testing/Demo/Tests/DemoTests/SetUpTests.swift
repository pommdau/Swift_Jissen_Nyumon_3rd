import XCTest

final class SetUpTests : XCTestCase {
    override class func setUp() {
        super.setUp()
        print("テストケース全体の事前処理")
    }
    
    override func setUp() {
        super.setUp()
        print("テスト毎の事前処理")
    }
    
    func test1() {
        print("テスト1")
    }
    
    func test2() {
        print("テスト2")
    }
}
