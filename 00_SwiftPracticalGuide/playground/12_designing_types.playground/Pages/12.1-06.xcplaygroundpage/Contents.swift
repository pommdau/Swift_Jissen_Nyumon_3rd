var temporaryData: String?

class SomeClass {
    init() {
        print("Create a temporary data")
        temporaryData = "a temporary data"
    }

    deinit {
        print("Clean up the temporary data")
        temporaryData = nil
    }
}

var someClass: SomeClass? = SomeClass()
temporaryData // a temporary data

someClass = nil
temporaryData // nil
