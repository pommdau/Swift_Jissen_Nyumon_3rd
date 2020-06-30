import Cocoa
/*
// whereキーワード
let optionalA: Int? = 1

switch optionalA {
case .some(let a) where a > 10:
    print("10より大きい値\(a)が存在します")
default:
    print("値が存在しない。もしくは10以下です")
}

// ラベル
let value = 0 as Any

outerSwitch: switch value {
case let int as Int:
    let description: String
    switch int {
    case 1, 3, 5, 7, 9:
        description = "odd"
    case 2, 4, 6, 8, 10:
        description = "even"
    default:
        print("対象外の値です")
        break outerSwitch
    }
    
    print("値は\(description)です")
    
default:
    print("対象外の型の値です")
}

// fallthrough
let b = 1

switch b {
case 1:
    print("case1")
    fallthrough
case 2:
    print("case2")
    fallthrough
default:
    print("default")
}
*/

/*
// MARK: - 5.5 パターンマッチ

// 式パターン
let integer = 6

switch integer {
case 6:
    print("match 6")
case 5...10:
    print("match: 5...10")
default:
    print("default")
}

// バリューバインディングパターン

let value = 3

switch value {
case let matchedValue:
    print(matchedValue)
}

// オプショナルパターン

let optionalA = Optional(4)
//let optionalA: Int? = nil
switch optionalA {
case let a?:
    print(a)
default:
    print("nil")
}

// 列挙型ケースパターン

enum Hemisphere {
    case northern
    case southern
}

let hemisphere = Hemisphere.northern

switch hemisphere {
case .northern:
    print("match: .northern")
case .southern:
    print("match: .southern")
}

let optionalHemisphere = Optional(Hemisphere.southern)

switch optionalHemisphere {
case .northern:
    print("match: .northern")
case .southern:
    print("match: .southern")
default:
    print("nil")
}


enum Color {
    case rgb(Int, Int, Int)
    case cmyk(Int, Int, Int, Int)
}

let color = Color.rgb(100, 200, 255)

switch color {
case .rgb(let r, let g, let b):
    print(r, g, b)
case .cmyk(let c, let m, let y, let k):
    print(c, m, y, k)
}

// is演算子による型キャスティングパターン
let any: Any = 1

switch any {
case is String:
    print("match: String")
case is Int:
    print("match Int")
default:
    print("default")
}

// as演算子
let any2: Any = 1

switch any2 {
case let string as String:
    print("match String(\(string)")
case let int as Int:
    print("match Int(\(int))")
default:
    print("default")
}
*/

// パターンマッチが使える場所

// if文
let value = 9

if case 1...10 = value {
    print("1<=value<=10")
}

// guard文
func someFunction() {
    let value = 9
    guard case 1...10 = value else {
        return
    }
    
    print("1<=value<=10")
}

someFunction()

// for-in文
let array = [1, 2, 3, 4]
for case 2...3 in array {
    print("2<=array.element<=3")
}

// while文
var nextValue = Optional(1)

while case let value? = nextValue {
    print("value: \(value)")
    
    if value >= 3 {
        nextValue = nil
    } else {
        nextValue = value + 1
    }
}
