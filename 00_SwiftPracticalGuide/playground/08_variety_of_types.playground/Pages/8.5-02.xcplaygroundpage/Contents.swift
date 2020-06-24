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
        case "日": self = .sunday
        case "月": self = .monday
        case "火": self = .tuesday
        case "水": self = .wednesday
        case "木": self = .thursday
        case "金": self = .friday
        case "土": self = .saturday
        default: return nil
        }
    }
}

let sunday = Weekday(japaneseName: "日") // Optional(Weekday.sunday)
let monday = Weekday(japaneseName: "月") // Optional(Weekday.monday)