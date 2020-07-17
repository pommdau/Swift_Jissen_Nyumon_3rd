import Cocoa


// MARK: - 14.2 GCD
/*
import Dispatch

let queue = DispatchQueue.global(qos: .userInitiated)
queue.async {
    Thread.isMainThread  // false
    print("非同期の処理")
    
    let queue = DispatchQueue.main  // メインディスパッチキューを取得
    queue.async {
        Thread.isMainThread
        print("MainThreadでの処理")
    }
}
*/

// MARK:- 14.3 Operation, OperationQueueクラス


class SomeOperation: Operation {
    let number: Int
    init(number: Int) {
        self.number = number
    }
    
    override func main() {
        Thread.sleep(forTimeInterval: 1)
        guard !isCancelled else { return }
        print(number)
    }
}

let queue = OperationQueue()
queue.name = "com.exapmle.my_operation_queue"
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
print("Operations are added")
//operations[6].cancel()  // cancel task

