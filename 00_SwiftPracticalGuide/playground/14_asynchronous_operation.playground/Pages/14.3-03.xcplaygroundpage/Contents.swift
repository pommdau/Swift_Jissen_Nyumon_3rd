import Foundation

let queue = OperationQueue()
queue.name = "com.example.my_operation_queue"
queue.maxConcurrentOperationCount = 2
queue.qualityOfService = .userInitiated