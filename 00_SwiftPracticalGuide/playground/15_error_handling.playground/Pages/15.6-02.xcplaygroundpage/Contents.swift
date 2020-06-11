func printSeason(forMonth month: Int) {
    switch month {
    case 1...2, 12:
        print("冬")
    case 3...5:
        print("春")
    case 6...8:
        print("夏")
    case 9...11:
        print("秋")
    default:
        assertionFailure("monthには1から12までの値を設定してください")
    }
}

printSeason(forMonth: 11)
printSeason(forMonth: 12)
printSeason(forMonth: 13)
