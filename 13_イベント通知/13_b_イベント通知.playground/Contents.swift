import Cocoa


// weakキーワード

import PlaygroundSupport
import Dispatch

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

/*
do {
    let object = SomeClass(id: 42)
    let closure = { [weak object] () -> Void in
        // object: SomeClass?
        if let o = object {
            print("objectはまだ開放されていません。id: \(o.id)")
        } else {
            print("objectは開放されました")
        }
    }
    
    print("local scope: ", terminator: "")
    closure()
    
    let queue = DispatchQueue.main
    
    queue.asyncAfter(deadline: .now() + 1) {
        print("out of local scope: ", terminator: "")
        closure()
    }
}
*/

// unowned keyword
/*
do {
    let object = SomeClass(id: 42)
    
    let closure_unowned = { [unowned object] () -> Void in
        print("objectはまだ開放されていません。id: \(object.id)")
    }
    
    print("local scope: ", terminator: "")
    closure_unowned()
    
    let queue = DispatchQueue.main
    
    queue.asyncAfter(deadline: .now() + 1) {
        print("out of local scope:")
        closure_unowned()
    }
}

*/

// escaping属性

class Executer {
    let int = 999
    var lastExecutedClosure: (() -> Void)? = nil
    
    func execute(_ closure: @escaping () -> Void) {
        closure()
        lastExecutedClosure = closure
    }
    
    func executePrintInt() {
        execute {
            print(self.int)
        }
    }
    
}

Executer().executePrintInt()  // 999


// typealias

typealias CompletionHandler = (Int?, Error?, Array<String>?) -> Void
func someMethod(completion: CompletionHandler) {}  // クロージャに名前を与えることで可読性が上がる
