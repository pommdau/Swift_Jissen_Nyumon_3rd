func someFunction() {
    let value = 9
    guard case 1...10 = value else {
        return
    }

    print("1以上10以下の値です")
}

someFunction()
