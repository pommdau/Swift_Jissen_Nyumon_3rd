import Cocoa


// MARK:- 3.3 数値型

//let a = Int8.min  // -128
//let b = Int8.max  // 127

// 浮動小数点型
//let a: Double = 12345678.9  // 12345678.9
//let b: Float = 12345678.9  // 1.234568e+07
//
//typealias CLLocationDegree = Double
//let c: CLLocationDegree = 12345678.9  // 12345678.9


// infinity
//let d: Double = 1.0 / 0.0
//d.isInfinite  // true
//
//let e: Double = Double.infinity
//e.isInfinite  // true

// NaN
//let a: Double = 0.0 / 0.0
//a.isNaN  // true
//let b: Double = Double.nan
//b.isNaN  // true

// 複合代入演算子
//var e = 5
//e %= 2  // e: 1


// MARK: - 3.4 String型
/*
let haiku = """
    五月雨を
      あつめて早し
    最上川
    """

//print(haiku)

// 数値型との相互変換
let s2 = "abc"
let i2 = Int(s2)  // nil

// String型の操作
var c: String = "abc"
let d: String = "def"
c.append(d)  // abcdef
c + d // abcdefdef

// Foundation
// 文字列感の順序比較
let options = String.CompareOptions.caseInsensitive
let order = "abc".compare("ABC", options: options)
order == ComparisonResult.orderedSame  // true

// 文字列の検索
let range = "abc".range(of: "bc")  // Range<String.Index>?型
*/


// MARK: - 3.5 Optional<Wrapped>型
/*
// Optional<Wrapped>: ジェネリック型
// Wrapped: プレースホルダ型

let none = Optional<Int>.none
//print(".none: \(String(describing: none))")  // .none: nil
let some = Optional<Int>.some(1)
//print(".some: \(String(describing: some))")  // .some: Optional(1)

let some1 = Optional.some(1)  // 1
let none1: Int? = Optional.none  // nil

// Optional<Wrapped>型の値の作成

var a: Int?
a = nil
a = Optional(1)  // Int?
a = 1  // Int?

let optionalInt: Int? = nil
let optionalString: String? = nil
//print(type(of: optionalInt),    String(describing: optionalInt))     // Optional<Int> nil
//print(type(of: optionalString), String(describing: optionalString))  // Optional<String> nil

// オプショナルチェイン
let optionalDouble = Optional(1.0)
let optionalIsInfinite = optionalDouble?.isInfinite  // Bool?型
//print(String(describing: optionalIsInfinite))  // Optional(false)


// mapとflatMap
let b = Optional(17)
let c = b.map({value in value * 2})
type(of: c)  // Optional<Int>.Type

let d = b.map({value in String(value)})
type(of: d)  // Optional<String>.Type


// flatmap
let e = Optional("17")
let f = e.map({value in Int(value)})
type(of: f)  // Optional<Optional<Int>>.Type
*/

// MARK:- 3.6 Any型
