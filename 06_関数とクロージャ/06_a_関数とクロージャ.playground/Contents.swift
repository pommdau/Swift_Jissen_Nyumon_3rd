import Cocoa


// MARK:- 6.2 関数

// インアウト引数

func greet(user: inout String) {
    if user.isEmpty {
        user = "Anonymous"
    }
    
    print("Hello, \(user)")
}

var user = ""
greet(user: &user)


// 可変長引数

func print(strings: String...) {
    if strings.count == 0 {
        return
    }
    
    print("first: \(strings[0])")
    
    for string in strings {
        print("element: \(string)")
    }
}

print(strings: "abc", "def", "ghi")

// implicit returns

func makeMessage(toUser user: String) -> String {
    "Hello, \(user)"
}

print(makeMessage(toUser: "Andy"))  // Hello, Andy
