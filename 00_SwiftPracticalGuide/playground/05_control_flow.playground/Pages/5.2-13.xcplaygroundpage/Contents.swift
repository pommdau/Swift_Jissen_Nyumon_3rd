func someFunction() {
    let a: Any = 1

    guard let int = a as? Int else {
        print("aはInt型ではありません")
        return
    }

    // intはguard文以降でも使用可能
    print("値はInt型の\(int)です")
}

someFunction()
