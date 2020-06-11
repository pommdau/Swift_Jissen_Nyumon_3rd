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
let string: String = valueContainer.getValue() // "abc"
let int: Int = valueContainer.getValue()       // 123