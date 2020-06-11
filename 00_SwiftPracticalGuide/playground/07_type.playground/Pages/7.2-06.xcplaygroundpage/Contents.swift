struct SomeStruct {
    static let sharedValue: Int = 73

    func printSharedValue() {
        print(Self.sharedValue)
    }
}