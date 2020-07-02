import UIKit


// MARK: - 7.4 イニシャライザ

// 失敗可能イニシャライザ

struct Item {
    let id: Int
    let title: String
    
    init?(dictionary: [String: Any]) {
        guard let id = dictionary["id"] as? Int,
            let title = dictionary["title"] as? String else {
                return nil
        }
        
        self.id = id
        self.title = title
    }
}

let dictionaries: [[String: Any]] = [
    ["id": 1, "title": "abc"],
    ["id": 2, "title": "def"],
    ["title": "ghi"],
    ["id": 3, "title": "jkl"],
]

for dictionary in dictionaries {
    // 失敗可能イニシャライザはItem?を返す
    if let item = Item(dictionary: dictionary) {
        print(item)
    } else {
        print("エラー: 辞書\(dictionary)からItemを生成できませんでした。")
    }
}


// MARK: - 7.6 サブスクリプト

// 数列
struct Progression {
    var numbers: [Int]
    
    subscript(index: Int) -> Int {
        get {
            return numbers[index]
        }
        
        set {
            numbers[index] = newValue
        }
    }
}

var progression = Progression(numbers: [1, 2, 3])
var element1 = progression[1] // 2
progression[1] = 4
element1 = progression[1]  // 4

// 行列
struct Matrix {
    var rows: [[Int]]
    
    subscript(row: Int, column: Int) -> Int {
        get {
            return rows[row][column]
        }
        
        set {
            rows[row][column] = newValue
        }
    }
}

let matrix = Matrix(rows: [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 0]
])

element1 = matrix[2, 1]  // 8

// セッタの省略
struct Progression2 {
    var numbers: [Int]
    
    subscript(index: Int) -> Int {
        return numbers[index]
    }
}

var progression2 = Progression2(numbers: [1, 2, 3])
progression2[0]  // 1


// MARK: - 7.7 Extension

extension String {
    var enclosedString: String {
        return "【\(self)】"
    }
}

let myString = "重要".enclosedString + "今日はお休み"  // "【重要】今日はお休み"


// イニシャライザの追加

enum WebAPIError: Error {
    case connectionError(Error)
    case fatalError
    
    var title: String {
        switch self {
        case .connectionError:
            return "通信エラー"
        case .fatalError:
            return "致命的なエラー"
            
        }
    }
    
    var message: String {
        switch self {
        case .connectionError(let underlyingError):
            return underlyingError.localizedDescription + "再試行してください"
        case .fatalError:
            return "サポート窓口に連絡してください"
        }
    }
}

extension UIAlertController {
    convenience init(webAPIError: WebAPIError) {
        self.init(title: webAPIError.title,
                  message: webAPIError.message,
                  preferredStyle: .alert)
    }
}

let error = WebAPIError.fatalError
let alertController = UIAlertController(webAPIError: error)


// MARK: - 7.8 型のネスト

struct NewsFeedItem {
    enum Kind {
        case a
        case b
        case c
    }
    
    let id: Int
    let title: String
    let kind: Kind
}

let item = NewsFeedItem(id: 1, title: "Table", kind: NewsFeedItem.Kind.b)
switch item.kind {
case .a: print(".a")
case .b: print(".b")
case .c: print(".c")
}
