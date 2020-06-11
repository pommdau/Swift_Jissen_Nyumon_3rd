import Foundation
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true

class SomeOperation : Operation {
    let number: Int
    init(number: Int) { self.number = number }

    override func main() {
        Thread.sleep(forTimeInterval: 1)

        guard !isCancelled else { return }

        print(number)
    }
}

let queue = OperationQueue()
queue.name = "com.example.my_operation_queue"
queue.maxConcurrentOperationCount = 2
queue.qualityOfService = .userInitiated

var operations = [SomeOperation]()

for i in 0..<10 {
    operations.append(SomeOperation(number: i))
}

queue.addOperations(operations, waitUntilFinished: false)
operations[6].cancel()
