func someFunction() {
    let value = -1

    guard value >= 0 else {
        print("0未満の値です")
        return
    }
}

someFunction()
