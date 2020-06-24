class SomeClass : Equatable {
    static func ==(lhs: SomeClass, rhs: SomeClass) -> Bool {
        return true
    }
}

let a = SomeClass()
let b = SomeClass()
let c = a

// 定数aとbは同じ値
a == b // true

// 定数aとbの参照先は異なる
a === b // false

// 定数aとcの参照先は同じ
a === c // true