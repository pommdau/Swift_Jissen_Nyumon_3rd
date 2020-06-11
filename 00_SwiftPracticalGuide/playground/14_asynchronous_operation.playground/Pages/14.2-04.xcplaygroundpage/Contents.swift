import Foundation
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true

let queue = DispatchQueue.global(qos: .userInitiated)
queue.async {
    Thread.isMainThread // false
    print("非同期の処理")
}
