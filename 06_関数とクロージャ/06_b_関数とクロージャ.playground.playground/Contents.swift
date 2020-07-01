import Cocoa

// MARK:- 実行方法

let lengthOfString = { (string: String) -> Int in
    return string.count
}

lengthOfString("I contain 23 characters")  // 23

// MARK: - 簡略引数名 shorthand argument name

let isEqual: (Int, Int) -> Bool = {
    return $0 == $1
}

isEqual(1, 1)  // true
isEqual(1, 2)  // false


let numbers = [10, 20, 30, 40]
let moreThanTwenty = numbers.filter { $0 > 20 }
moreThanTwenty  // [30, 40]


// MARK: - クロージャによる変数と定数のキャプチャ

let greeting: (String) -> String

do {
    let symbol = "!"
    
    greeting = { user in
        return "Hello, \(user)\(symbol)"
    }
}

greeting("IKEH1024")  // "Hello, IKEH1024!"


let counter: () -> Int

do {
    var count = 0
    
    counter = {
        count += 1
        return count
    }
    
}

counter()  // 1
counter()  // 2

// MARK:- escaping属性

var queue = [() -> Void]()

// 引数として与えられたクロージャを、配列queueに追加する
// クロージャは関数のスコープ内で保存されるため、引数に@escapingが必要となる
func enqueue(operation: @escaping () -> Void) {
    queue.append(operation)
}

enqueue { print("executed") }
enqueue { print("executed") }

queue.forEach { $0() }

/*
 executed
 executed
 */

// MARK:- autoclosure属性

func or(_ lhs: Bool, _ rhs: Bool) -> Bool {
    if lhs {
        print("true")
        return true
    } else {
        print(rhs)
        return rhs
    }
}

or(true, false)  // true

func lhs() -> Bool {
    print("lhs()関数が実行されました")
    return true
}

func rhs() -> Bool {
    print("rhs()関数が実行されました")
    return false
}

or(lhs(), rhs())

/*
 lhs()関数が実行されました
 rhs()関数が実行されました
 true
 */

print("🍏")

func or_02(_ lhs: Bool, _ rhs: () -> Bool) -> Bool {
    if lhs {
        print("true")
        return true
    } else {
        let rhs = rhs()
        print(rhs)
        return rhs
    }
}

or_02(lhs(), { return rhs() })
// or_02(lhs(), rhs())  // compile error

/*
 lhs()関数が実行されました
 true
 */

// @autoclosureで改善
print("🍏@autoclosur属性e")
func or_03(_ lhs: Bool, _ rhs: @autoclosure () -> Bool) -> Bool {
    if lhs {
        print("true")
        return true
    } else {
        let rhs = rhs()
        print(rhs)
        return rhs
    }
}

or_03(lhs(), rhs())

/*
 lhs()関数が実行されました
 true
 */


// MARK:- クロージャとしての関数
print("🍏クロージャとしての関数")

let array1 = [1, 2, 3]
let doubledArray1 = array1.map { $0 * 2 }
doubledArray1  // [2, 4, 6]

let array2 = [4, 5, 6]
let doubledArray2 = array2.map { $0 * 2 }
doubledArray2  // [8, 10, 12]

// 改善
func double(_ x: Int) -> Int {
    return x * 2
}

let doubledArray3 = array1.map(double)  // [2, 4, 6]


// MARK: - クロージャ式を利用した変数や定数の初期化
print("🍏クロージャ式を利用した変数や定数の初期化")
//var board = [[1, 1, 1], [1, 1, 1], [1, 1, 1]]
var board = Array(repeating: Array(repeating: 1, count: 3), count: 3)
board  // [[1, 1, 1], [1, 1, 1], [1, 1, 1]]

var board_02: [[Int]] = {
    let sideLength = 3
    let row = Array(repeating: 1, count: sideLength)
    let board = Array(repeating: row, count: sideLength)
    return board
}()

board_02  // [[1, 1, 1], [1, 1, 1], [1, 1, 1]]
