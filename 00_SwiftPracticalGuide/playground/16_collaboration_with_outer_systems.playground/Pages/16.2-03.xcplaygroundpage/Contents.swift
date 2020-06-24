import Foundation

struct SomeStruct : Codable {
    let value: Int
}

let someStruct = SomeStruct(value: 1)

let jsonEncoder = JSONEncoder()
let encodedJSONData = try! jsonEncoder.encode(someStruct)
let encodedJSONString = String(data: encodedJSONData,
    encoding: .utf8)!
print("Encoded:", encodedJSONString)

let jsonDecoder = JSONDecoder()
let decodedSomeStruct = try! jsonDecoder
    .decode(SomeStruct.self, from: encodedJSONData)
print("Decoded:", decodedSomeStruct)
