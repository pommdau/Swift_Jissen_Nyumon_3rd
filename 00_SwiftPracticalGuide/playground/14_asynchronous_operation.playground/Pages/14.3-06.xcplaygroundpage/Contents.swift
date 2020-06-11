import Foundation
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true

class SomeOperation : Operation {
    let number: Int
    init(number: Int) { self.number = number }

    override func main() {
        Thread.sleep(forTimeInterval: 1)

        if isCancelled { return }

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
    if i > 0 {
        operations[i].addDependency(operations[i-1])
    }
}

queue.addOperations(operations, waitUntilFinished: false)
