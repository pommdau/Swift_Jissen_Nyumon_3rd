struct ValueContainer {
    let stringValue = "abc"
    let intValue = 123

    func getValue() -> String {
        return stringValue
    }

    func getValue() -> Int {
        return intValue
    }
}

let valueContainer = ValueContainer()
// let value = valueContainer.getValue() // コンパイルエラー