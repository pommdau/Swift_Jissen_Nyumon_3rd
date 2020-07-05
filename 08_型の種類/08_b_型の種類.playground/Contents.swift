import Cocoa

// StaticとClassの使い分け

class A {
    // override可能
    class var className: String {
        return "A"
    }
    
    // overide不可
    static var baseClassName: String {
        return "A"
    }
}

class B : A {
    override class var className: String {
        return "B"
    }
    
    // Compile error
//    override static var baseClassName: String {
//        return ""
//    }
}

A.className  // A
A.baseClassName  // A

B.className  // B
B.baseClassName  // A

// イニシャライザの種類と初期化のプロセス

class Mail {
    let from: String
    let to: String
    let title: String
    
    // designated initializer
    init (from: String, to: String, title: String) {
        self.from = from
        self.to = to
        self.title = title
    }
    
    // convenience initializer
    convenience init(from: String, to: String) {
        // コンビニエンスイニシャライザは最終的に指定イニシャライズを呼ぶ
        self.init (from: from, to: to, title: "Hello, \(from)")
    }
}

// 2段階初期化

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
    
    // designated initializer(指定イニシャライザ)
    init(id: Int, name: String) {
        // first step
        self.name = name
        super.init(id: id)
        
        // second step
        self.printProfile()
    }
}


// クラスのメモリ管理
