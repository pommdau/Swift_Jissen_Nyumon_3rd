import Cocoa

//fatalError("想定しないエラーが発生したためプログラムを終了します。")
print("🍏")


// MARK:- 15.6 アサーションによるデバッグ時のプログラムの終了

func format(minute: Int, second: Int) -> String {
    assert(second < 60, "secondは60未満にしてください")
    return "\(minute)分\(second)秒"
}

//print(format(minute: 24, second: 48))
//print(format(minute: 24, second: 72))


// assertionFailure(_:)関数

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
        assertionFailure("monthの範囲は1~12")
    }
}

printSeason(forMonth: 11)
printSeason(forMonth: 12)
printSeason(forMonth: 13)
