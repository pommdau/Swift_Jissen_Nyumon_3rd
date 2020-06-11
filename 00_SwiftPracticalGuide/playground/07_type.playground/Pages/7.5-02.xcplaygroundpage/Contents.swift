struct SomeStruct {
    var value = 0

    func printValue() {
        print("value: \(self.value)")
    }
}

var someStruct1 = SomeStruct()
someStruct1.value = 1
someStruct1.printValue()

var someStruct2 = SomeStruct()
someStruct2.value = 2
someStruct2.printValue()
