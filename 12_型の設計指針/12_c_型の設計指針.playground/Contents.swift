import Cocoa

 
// MARK: - 12.3 オプショナル型の利用指針

struct User {
    let id: Int
    let name: String
    let mailAddress: String?
    
    init?(json: [String : Any]) {
        guard let id = json["id"] as? Int,
            let name = json["name"] as? String else {
                return nil
        }
        
        self.id = id
        self.name = name
        self.mailAddress = json["email"] as? String
    }
}

let json: [String : Any] = [
    "id" : 123,
    "name" : "Yusei Nishiyama"
]

if let user = User(json: json) {
    print("id: \(user.id), name: \(user.name)")  // id: 123, name: Yusei Nishiyama
} else {
    print("Invalid JSON")
}


// XXX!を利用すべきとき

class SuperClass {
    let one = 1
}

class BaseClass : SuperClass {
    var two: Int!
    
    override init() {
        super.init()
        two = one + 1
    }
}
