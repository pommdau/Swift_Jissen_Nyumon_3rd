import Cocoa

// MARK:- クラスに紐づく要素

class A {
    // Class Property
    class var className: String {
        return "A"
    }
}

class B : A {
    override class var className: String {
        return "B"
    }
}

A.className  // "A"
B.className  // "B"


// MARK:- 指定イニシャライザ

class Mail {
    let from: String
    let to: String
    let title: String
    
    // 指定イニシャライザ
    init(from: String, to: String, title: String) {
        self.from = from
        self.to = to
        self.title = title
    }
    
    // Convenience Initializer
    convenience init(from: String, to: String) {
        self.init(from: from, to: to, title: "Hello \(to), by \(from)")
    }
}

let mail = Mail(from: "Hiroki", to: "YUI")
mail.title  // Hello YUI, by Hiroki


// MARK:- 2段階初期化

class User {
    let id: Int
    
    init(id: Int) {
        self.id = id
    }
    
    func printProfile() {
        print("id: \(id)")
    }
}

class RegisteredUser: User {
    let name: String
    
    init(id: Int, name: String) {
        // 第1段階
        self.name = name
        
        // 下記はコンパイルエラーとなる 'self' used in method call 'printProfile' before 'super.init' call
//        self.printProfile()
        
        // スーパークラスの指定イニシャライザ
        super.init(id: id)
        
        // 第2段階
        self.printProfile()
    }
    
}

let newUser = RegisteredUser(id: 9999, name: "IKEH1024")  // id: 9999


// MARK: Default Initializer

class User2 {
    let id = 0
    let name = "Taro"
}

let user = User2()


// MARK:- 値の比較と参照の比較

class SomeClass: Equatable {
    static func ==(lhs: SomeClass, rhs: SomeClass) -> Bool {
        return true
    }
}

let a = SomeClass()
let b = SomeClass()
let c = a

a == b  // true（同一クラス）
a === b  // false（異なるインスタンス）
a === c  // true（同一インスタンス）
