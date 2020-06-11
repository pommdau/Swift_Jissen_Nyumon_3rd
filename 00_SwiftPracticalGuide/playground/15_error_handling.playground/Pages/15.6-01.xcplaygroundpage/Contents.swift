func format(minute: Int, second: Int) -> String {
    assert(second < 60, "secondは60未満に設定してください")
    return "\(minute)分\(second)秒"
}

format(minute: 24, second: 48) // 24分48秒
format(minute: 24, second: 72) // 実行時エラー
