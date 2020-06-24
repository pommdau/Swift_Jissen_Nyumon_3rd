struct Item {
    let id: Int
    let title: String

    init?(dictionary: [String: Any]) {
        guard let id = dictionary["id"] as? Int,
              let title = dictionary["title"] as? String else {
            // このケースではidとtitleは未初期化のままでもコンパイル可能
            return nil
        }

        self.id = id
        self.title = title
    }
}

let dictionaries: [[String: Any]] = [
    ["id": 1, "title": "abc"],
    ["id": 2, "title": "def"],
    ["title": "ghi"], // idが欠けている辞書
    ["id": 3, "title": "jkl"],
]

for dictionary in dictionaries {
    // 失敗可能イニシャライザはItem?を返す
    if let item = Item(dictionary: dictionary) {
        print(item)
    } else {
        print("エラー: 辞書\(dictionary)からItemを生成できませんでした")
    }
}
