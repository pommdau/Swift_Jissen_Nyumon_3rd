import Cocoa


// MARK: - 9.4 Protocol Extension

protocol Item {
    var name: String { get }
    var category: String { get }
}

extension Item {
    var description: String {
        return "Item Name: \(name), Category: \(category)"
    }
}

struct Book : Item {
    let name: String
    
    var category: String {
        return "書籍"
    }
}

let book = Book(name: "Swift実践入門")
book.description  // "Item Name: Swift実践入門, Category: 書籍"


// デフォルト実装による実装の任意化
protocol Item_02 {
    var name: String { get }
    var caution: String? { get }
}

extension Item_02 {
    var caution: String? {  // デフォルト実装のおかげで、実装は任意になる
        return nil
    }
    
    var description: String {
        var description = "Item Name: \(name)"
        if let caution = caution {
            description += ", Caution: \(caution)"
        }
        
        return description
    }
}

struct Book_02: Item_02 {
    let name: String
}

struct Fish: Item_02 {
    let name: String
    
    var caution: String? {
        return "Deliver in cool status."
    }
}

let book_02 = Book_02(name: "Swift実践入門")
book_02.description  // "Item Name: Swift実践入門"

let fish = Fish(name: "秋刀魚")
fish.description  // "Item Name: 秋刀魚, Caution: Deliver in cool status."

// 型制約の追加

extension Collection where Element == Int {
    var sum: Int {
        return reduce(0) { return $0 + $1 }
    }
}

let integers = [1, 2, 3]
integers.sum

//let doubles: [Double] = [1.0, 2.0, 3.0]
//doubles.sum  // can't use

// reduceの復習
let arrayForReduce = [1, 2, 3, 4, 5, 6]
let sum = arrayForReduce.reduce(0, {result, element in result + element})
sum  // 21

// Closureの復習

let add = {(x: Int, y: Int) -> Int in
    return x + y
}

let add_02: (Int, Int) -> Int = {
    return $0 + $1
}

add(1, 2)
add_02(1, 2)

let numbers = [1, 2, 3, 4, 5]
let moreThanThree = numbers.filter { (number) -> Bool in  // [4, 5]
    number > 3
}
let moreThanThree_02 = numbers.filter { $0 > 3 }
moreThanThree_02  // [4, 5]
