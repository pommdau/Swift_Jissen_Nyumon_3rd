class SuperClass {
    var one = 1
}

class BaseClass : SuperClass {
    var two: Int!

    override init() {
        super.init()
        two = one + 1
    }
}

BaseClass().one // 1
BaseClass().two // 2