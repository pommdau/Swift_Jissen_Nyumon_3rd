import PlaygroundSupport
import Dispatch

// Playgroundでの非同期実行を待つオプション
PlaygroundPage.current.needsIndefiniteExecution = true

class SomeClass {
    let id: Int

    init(id: Int) {
        self.id = id
    }
}

do {
    let object = SomeClass(id: 42)
    let closure = { [weak object] () -> Void in
        if let o = object {
            print("objectはまだ解放されていません: id => \(o.id)")
        } else {
            print("objectはすでに解放されました")
        }
    }

    print("ローカルスコープ内で実行: ", terminator: "")
    closure()

    let queue = DispatchQueue.main

    queue.asyncAfter(deadline: .now() + 1) {
        print("ローカルスコープ外で実行: ", terminator: "")
        closure()
    }
}
