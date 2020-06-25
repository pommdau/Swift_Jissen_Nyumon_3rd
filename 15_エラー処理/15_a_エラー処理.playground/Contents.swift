import Foundation


// MARK:- 【15.2】 Optional<Wrapped>型によるエラー処理

struct User {
    let id: Int
    let name: String
    let email: String
}

func findUser(byID id: Int) -> User? {
    let users = [
        User(id: 1, name: "Yusei Nishiyama", email: "nishiyama@example.com"),
        User(id: 1, name: "Yusei Iishikama", email: "ishikama@example.com")
    ]
    
    for user in users {
        if user.id == id {
            return user
        }
    }
    
    return nil
}

/*
let id = 1
if let user = findUser(byID: id) {
    print("Name: \(user.name)")
} else {
    print("Error: User not found")
}
 */

// 失敗可能イニシャライザ

struct User2 {
    let id: Int
    let name: String
    let email: String
    
    init?(id: Int, name: String, email: String) {
        let components = email.components(separatedBy: "@")
        guard components.count == 2 else {
            return nil
        }
        
        self.id = id
        self.name = name
        self.email = email
    }
}

/*
if let user = User2(id: 0, name: "Yosuke Ishikawa", email: "ishikawa.example.com") {
    print("Name: \(user.name)")
} else {
    print("Error: Invalid data")
}
*/


// MARK:- 【15.3】Result<Success, Failure>型によるエラー処理

enum DatabaseError: Error {
    case entryNotFound
    case duplicatedEntry
    case invalidEntry(reason: String)
}

struct User3 {
    let id: Int
    let name: String
    let email: String
}

func findUser3(byID id: Int) -> Result<User, DatabaseError> {
    let users = [
        User(id: 1, name: "Yusei Nishiyama", email: "nishiyama@example.com"),
        User(id: 1, name: "Yusei Iishikama", email: "ishikama@example.com")
    ]
    
    for user in users {
        if user.id == id {
            return .success(user)
        }
    }
    
    return .failure(.entryNotFound)
}


//let id = 0
//let result = findUser3(byID: id)
//
//switch result {
//case let .success(user):
//    print(".success: \(user)")
//case let .failure(error):
//    switch error {
//    case .entryNotFound:
//        print(".failure: .entryNotFound")
//    case .duplicatedEntry:
//        print(".failure: .duplicatedEntry")
//    case .invalidEntry(let reason):
//        print(".failure: .invalidEntry(\(reason)")
//    }
//
//}


// MARK: - 15.4 do-catch文によるエラー処理


struct SomeError: Error {}

//do {
//    throw SomeError()
//    print("Success")  // 実行されない
//} catch {
//    print("Failure: \(error)")
//}


enum SomeError2: Error {
    case error1
    case error2(reason: String)
}

//do {
//    throw SomeError2.error2(reason: "Something is wrong...")
//} catch SomeError2.error1 {
//    print("error1")
//} catch SomeError2.error2(let reason) {
//    print("error2: \(reason)")
//} catch {
//    print("Unknown error: \(error)")
//}


// throwsキーワード

enum OperationError: Error {
    case overCapacity
}

func triple(of int: Int) throws -> Int {
    guard int <= Int.max / 3 else {
        throw OperationError.overCapacity
    }
    
    return int * 3
}

//print(try! triple(of: 3))


// rethrowsキーワード

struct SomeError3: Error {}

func rethrowingFunction(_ throwingClosure: () throws -> Void) rethrows {
    /*
     rethrowsがなければ下記のように書く所
     do {
         try throwingClosure()
     } catch {
         print(error)
     }
     */
    
    try throwingClosure()
    
    
}

//do {
//    try rethrowingFunction {
//        // 以下は引数として渡すクロージャ
//        throw SomeError3()
//    }
//} catch {
//    // エラーを呼び出し元に伝搬している
//    print(error)  // SomeError3()
//}

// 別パターン

enum SomeError4: Error {
    case originalError
    case convertedError
}

func rethrowingFunction2(_ throwingClosure: () throws -> Void) rethrows {
    do {
        try throwingClosure()
    } catch {
        // 引数のClosureを処理し、別のエラーをthrowsする
        print(error)  // originalError
        throw SomeError4.convertedError
    }
}

do {
    try rethrowingFunction2 {
        throw SomeError4.originalError
    }
} catch {
    print(error)  // convertedError
}
