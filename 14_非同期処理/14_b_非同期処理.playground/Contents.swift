import Cocoa

 
// MARK: - 14.5 非同期処理の結果のイベント通知

import Dispatch
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true

func runAsynchronousTask(handler: @escaping (Int) -> Void) {
    let globalQueue = DispatchQueue.global()
    globalQueue.async {
        let result = Array(0...1000000).reduce(0, +)
        
        let mainQueue = DispatchQueue.main
        mainQueue.async {
            handler(result)
        }
    }
}

runAsynchronousTask { result in
    print(result)  // 500000500000
}
