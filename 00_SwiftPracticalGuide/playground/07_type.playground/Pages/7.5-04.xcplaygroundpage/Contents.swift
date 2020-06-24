struct Printer {
    func put(_ value: String) {
        print("string: \(value)")
    }

    func put(_ value: Int) {
        print("int: \(value)")
    }
}

let printer = Printer()
printer.put("abc")
printer.put(123)
