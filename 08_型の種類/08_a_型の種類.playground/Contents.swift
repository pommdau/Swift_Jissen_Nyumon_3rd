import Cocoa

// memberwise initializer

struct Mail_01 {
    var subject: String = "(No Subject)"
    var body: String
}

let noSubject = Mail_01(body: "Hello!")
noSubject.subject  // "(No Subject)"
noSubject.body  // "Hello!"


// MARK: - 8.4 Class
/*
class User {
    let id: Int
    
    var message: String {
        return "Hello"
    }
    
    init(id: Int) {
        self.id = id
    }
    
    func printProfile() {
        print("id: \(id)")
        print("message: \(message)")
    }
}

// Userを継承したクラス
class RegisteredUser: User {
    let name: String
    
    init(id: Int, name: String) {
        self.name = name
        super.init(id: id)
    }
}

let registeredUser = RegisteredUser(id: 1, name: "Yosuke Ishikawa")
let id = registeredUser.id
let message = registeredUser.message
registeredUser.printProfile()  // message: Hello
*/

// オーバライド
/*
class User {
    let id: Int
    
    var message: String {
        return "Hello"
    }
    
    init(id: Int) {
        self.id = id
    }
    
    func printProfile() {
        print("id: \(id)")
        print("message: \(message)")
    }
}

// Userを継承したクラス
class RegisteredUser: User {
    let name: String
    
    override var message: String {
        return "Hello, my name is \(name)"
    }
    
    init(id: Int, name: String) {
        self.name = name
        super.init(id: id)
    }
    
    override func printProfile() {
        super.printProfile()
        print("name: \(name)")
    }
}

let user = User(id: 1)
/*
 id: 1
 message: Hello
 */
user.printProfile()

/*
 id: 2
 message: Hello, my name is Yosei Nishiyama
 name: Yosei Nishiyama
 */
let registeredUser = RegisteredUser(id: 2, name: "Yosei Nishiyama")
registeredUser.printProfile()

*/
