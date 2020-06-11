extension String {
    var enclosedString: String {
        return "【\(self)】"
    }
}

let title = "重要".enclosedString + "今日は休み" // 【重要】今日は休み