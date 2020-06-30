import Cocoa

// MARK:- Dictionary<Key, Value>型
/*
// 空の辞書リテラル
let emptyDictionary: [String: Int] = [:]

// Dictionary型の操作
let myDictinoary = ["key1": "value1"]
let value2 = myDictinoary["key2"]  // nil
print(type(of: value2))  // Optional<String>
*/

// MARK: - 4.4 範囲型
/*
let range_bound = 1.5..<2.5
type(of: range_bound)  // Range<Double>.Type
let countableRange_bound = 1..<4
type(of: countableRange_bound)  // Range<Int>.Type
let partialRangeUpTo_bound = ..<3.5
type(of: partialRangeUpTo_bound)  // PartialRangeUpTo<Double>.Type

// 範囲型の操作
let myRange = 1...4
myRange.contains(2)
myRange.contains(5)

// String.Index型

let myString = "abc"
let bIndex = myString.index(myString.startIndex, offsetBy: 1)
let b = myString[bIndex]

let cIndex = myString.index(myString.endIndex, offsetBy: -1)
let c = myString[cIndex]

// 'subscript(_:)' is unavailable: cannot subscript String with an Int, use a String.Index instead.
//let c = myString[2]  // Compile Error
*/


// MARK: - 4.6 シーケンスとコレクションを扱うためのプロトコル

// Sequenceプロトコル

// forEach(_:)
let myArray = [1, 2, 3, 4, 5, 6]
var enumerated = [] as [Int]
myArray.forEach({element in enumerated.append(element)})
enumerated

// filter(_:)
let arrayForFilter = [1, 2, 3, 4, 5, 6]
let filtered = arrayForFilter.filter({element in element % 2 == 0})
filtered

// map(_:)
let arrayForMap = [1, 2, 3, 4, 5, 6]
let doubled = arrayForMap.map({element in element * 2})
doubled

let converted = arrayForMap.map({element in String(element)})
converted

// flatMap(_:)
let arrayForFlatMap = [1, 4, 7]
let converted2 = arrayForFlatMap.flatMap({value in [value, value + 1]})
converted2

let converted3 = arrayForFlatMap.map({value in [value, value + 1]})
converted3  // [[1, 2], [4, 5], [7, 8]]

// compactMap(_:)
let arrayForCompactMap = ["abc", "123", "def", "456"]
let integers = arrayForCompactMap.compactMap({value in Int(value)})
integers  // [123, 456]

let integers2 = arrayForCompactMap.map({value in Int(value)})
integers2  // [nil, 123, nil, 456]

// reduce(_:_:)
let arrayForReduce = [1, 2, 3, 4, 5, 6]
let sum = arrayForReduce.reduce(0, {result, element in result + element})
sum
let concat = arrayForReduce.reduce("", {result, element in result + String(element)})
concat
