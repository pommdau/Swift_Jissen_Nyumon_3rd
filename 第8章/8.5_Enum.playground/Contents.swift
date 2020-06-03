import Cocoa

enum Weekday {
    case sunday
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
    case saturday
    
    init?(japaneseName: String) {
        switch japaneseName {
        case "日":
            self = .sunday
        case "月":
            self = .monday
        case "火":
            self = .tuesday
        case "水":
            self = .wednesday
        case "木":
            self = .thursday
        case "金":
            self = .friday
        case "土":
            self = .saturday
            
        default:
            return nil
        }
    }
    
    // Computed Propertyのみ持つことができる
    var name: String {
        switch self {
        case .sunday:
            return "日"
        case .monday:
            return "月"
        case .tuesday:
            return "火"
        case .wednesday:
            return "水"
        case .thursday:
            return "木"
        case .friday:
            return "金"
        case .saturday:
            return "土"
        }
    }
    
}

let sunday = Weekday.sunday  // sunday
let monday = Weekday.monday

let sunday2 = Weekday(japaneseName: "日")  // Optional(__lldb_expr_5.Weekday.sunday)
let monday2 = Weekday(japaneseName: "月")

print(sunday.name)  // 日

//////////////////////////////////////////////////////
// ローバリュー

enum Symbol: Character {
    case sharp = "#"
    case dollart = "$"
    case percent = "%"
}

let symbol1 = Symbol.sharp
print(symbol1.rawValue)  // #

let symbol2 = Symbol(rawValue: "#")
let character = symbol2?.rawValue
print(character)  // Optional("#")

/////////////////////////////////////////////
// 連想値

enum Color {
    case rgb(Float, Float, Float)
    case cmyk(Float, Float, Float, Float)
}

let rgb = Color.rgb(0.0, 0.33, 0.66)
let cmyk = Color.cmyk(0.0, 0.33, 0.66, 0.99)

// r:0.0, g:0.33, b:0.66
switch rgb {
case .rgb(let r, let g, let b):
    print("r:\(r), g:\(g), b:\(b)")
case .cmyk(let c, let m, let y, let k):
    print("c:\(c), m:\(m), y:\(y), k:\(k)")
}

//////////////////////////////////
// CaseIterableプロトコル

enum Weekday2: CaseIterable {
    case sunday
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
    case saturday
}

let weekdayList = Weekday2.allCases
