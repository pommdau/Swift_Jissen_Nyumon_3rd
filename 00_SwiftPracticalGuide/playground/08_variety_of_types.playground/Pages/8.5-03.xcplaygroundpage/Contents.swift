enum Weekday {
    case sunday
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
    case saturday

    var name: String {
        switch self {
        case .sunday:    return "日"
        case .monday:    return "月"
        case .tuesday:   return "火"
        case .wednesday: return "水"
        case .thursday:  return "木"
        case .friday:    return "金"
        case .saturday:  return "土"
        }
    }
}

let weekday = Weekday.monday
let name = weekday.name // 月