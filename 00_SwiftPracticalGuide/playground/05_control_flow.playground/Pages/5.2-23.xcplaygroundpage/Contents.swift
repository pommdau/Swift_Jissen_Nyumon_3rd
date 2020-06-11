let value = 0 as Any

outerSwitch: switch value {
case let int as Int:
    let description: String
    switch int {
    case 1, 3, 5, 7, 9:
        description = "奇数"
    case 2, 4, 6, 8, 10:
        description = "偶数"
    default:
        print("対象外の値です")
        break outerSwitch
    }
    print("値は\(description)です")
default:
    print("対象外の型の値です")
}
