import Cocoa

// try!キーワード

enum OperationError: Error {
    case overCapacity
}

func triple(of int: Int) throws -> Int {
    guard int <= Int.max / 3 else {
        throw OperationError.overCapacity
    }
    
    return int * 3
}

//let int = 9
////let int = Int.max
//let trippleOutInt = try! triple(of: int)  // do-catch文が不要
//print(trippleOutInt)
//
//if let triple = try? triple(of: 9) {  // try!よりも安全である
//    print(triple)
//}


// defer文

enum Error2: Swift.Error {
    case someError
}

func someFunction() throws {
    print("Do something")
    throw Error2.someError
}

func cleanup() {
    print("Clean up")
}

//do {
//    defer {
//        // do節を抜けたタイミングで必ず実行される
//        cleanup()
//    }
//
//    try someFunction()
//    print("エラーが発生した場合これは呼ばれない")
//
//} catch {
//    print("Error: \(error)")
//}


// MARK:- 連続した処理のエラーをまとめて扱う

// 1. Result<Success, Failure>型を使う場合
/*
enum DatabaseError: Error {
    case entryNotFound
    case duplicatedEntry
    case invalidEntry(reason: String)
}

struct User {
    let id: Int
    let name: String
    let email: String
}

func findUser(byID id: Int) -> Result<User, DatabaseError> {
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

func localPart(fromEmail email: String) -> Result<String, DatabaseError> {
    let components = email.components(separatedBy: "@")
    guard components.count == 2 else {
        return .failure(.invalidEntry(reason: "Invalid email address"))
    }
    
    return .success(components[0])
}

let userID = 1

switch findUser(byID: userID) {
    
case .success(let user):
    // Emailの有効確認
    switch localPart(fromEmail: user.email) {
    case .success(let localPart):
        print("Local part: \(localPart)")
    case .failure(let error):
        print("Error: \(error)")
    }

case .failure(let error):
    print("Error: \(error)")
    
}
 */


// 2. do-catchを使う場合

enum DatabaseError: Error {
    case entryNotFound
    case duplicatedEntry
    case invalidEntry(reason: String)
}

struct User {
    let id: Int
    let name: String
    let email: String
}

func findUser(byID id: Int) throws -> User {
    let users = [
        User(id: 1, name: "Yusei Nishiyama", email: "nishiyama@example.com"),
        User(id: 1, name: "Yusei Iishikama", email: "ishikama@example.com")
    ]
    
    for user in users {
        if user.id == id {
            return user
        }
    }
    
    throw DatabaseError.entryNotFound
}

func localPart(fromEmail email: String) throws -> String {
    let components = email.components(separatedBy: "@")
    guard components.count == 2 else {
        throw DatabaseError.invalidEntry(reason: "Invalid email address")
    }
    
    return components[0]
}

let userID = 1

do {
    let user = try findUser(byID: userID)
    let localPartOfEmail = try localPart(fromEmail: user.email)
    print("Local part: \(localPartOfEmail)")
} catch {
    print("Error: \(error)")
}
    
