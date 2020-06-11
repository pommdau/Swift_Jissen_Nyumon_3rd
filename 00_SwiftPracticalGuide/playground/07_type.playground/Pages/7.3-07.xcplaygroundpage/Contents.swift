struct SomeStruct {
    var value: Int = {
        print("valueの値を生成します")
        return 1
    }()

    lazy var lazyValue: Int = {
        print("lazyValueの値を生成します")
        return 2
    }()
}

var someStruct = SomeStruct()
print("SomeStructをインスタンス化しました")
print("valueの値は\(someStruct.value)です")
print("lazyValueの値は\(someStruct.lazyValue)です")
