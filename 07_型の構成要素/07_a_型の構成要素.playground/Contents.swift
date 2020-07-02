import Cocoa

// Self

struct SomeStruct {
    static let sharedValue: Int = 73
    
    func printSharedValue() {
        print(Self.sharedValue)
    }
}

let someStruct = SomeStruct()
someStruct.printSharedValue()


// プロパティオブザーバ

struct Greeting {
    var to = "Yosuke Ishikawa" {
        willSet {
            print("willSet: (to: \(self.to), newValue: \(newValue))")
        }
        
        didSet {
            print("didSet: (to: \(self.to)) from: \(oldValue))")
        }
        
    }
}

var greeting = Greeting()
greeting.to = "Yusei Nishiyama"


// lazy stored property

struct SomeStruct2 {
    var value: Int = {
        print("valueの値を作成します")
        return 1
    }()
    
    lazy var lazyValue: Int = {
        print("lazyValueの値を作成します")
        return 1
    }()
}

/*
valueの値を作成します
SomeStruct2をインスタンス化しました
value: 1
lazyValueの値を作成します
lazyValue: 1
*/
var someStruct2 = SomeStruct2()
print("SomeStruct2をインスタンス化しました")
print("value: \(someStruct2.value)")
print("lazyValue: \(someStruct2.lazyValue)")


struct SomeStruct3 {
    var value = 1
//    var lazyValue = double(of: value)  // compile error
    lazy var lazyValue = double(of: value)
    
    func double(of value: Int) -> Int {
        return value * 2
    }
}


// Computed Property

struct Greeting2 {
    var to = "Yosuke Ishikawa"
    var body: String {
        // setterがない場合、getは省略可
        return "Hello, \(to)"
    }
}

let greeting2 = Greeting2()
greeting2.body  // "Hello, Yosuke Ishikawa"
