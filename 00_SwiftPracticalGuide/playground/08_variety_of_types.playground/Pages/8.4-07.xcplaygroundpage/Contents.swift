class A {
    class var className: String {
        return "A"
    }
}

class B : A {
    override class var className: String {
        return "B"
    }
}

A.className // "A"
B.className // "B"