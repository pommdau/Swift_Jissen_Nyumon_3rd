import PlaygroundSupport
import Dispatch

// Playgroundでの非同期実行を待つオプション
PlaygroundPage.current.needsIndefiniteExecution = true

class SomeClass {
    let id: Int

    init(id: Int) {
        self.id = id
    }

    deinit {
        print("deinit")
    }
}

do {
    let object = SomeClass(id: 42)

    let queue = DispatchQueue.main

    queue.asyncAfter(deadline: .now() + 3) {
        print(object.id)
    }
}
