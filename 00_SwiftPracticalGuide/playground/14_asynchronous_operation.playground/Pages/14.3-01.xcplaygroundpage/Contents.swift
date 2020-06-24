import Foundation

class SomeOperation : Operation {
    let number: Int
    init(number: Int) { self.number = number }

    override func main() {
        // 1秒待つ
        Thread.sleep(forTimeInterval: 1)
        print(number)
    }
}