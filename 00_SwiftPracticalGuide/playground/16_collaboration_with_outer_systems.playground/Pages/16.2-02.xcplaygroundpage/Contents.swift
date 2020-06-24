import Foundation

let encoder = JSONEncoder()
let decoder = JSONDecoder()

let encoded = try encoder.encode(["key":"value"])
let jsonString = String(data: encoded, encoding: .utf8)!
print("エンコード結果:", jsonString)

let decoded = try decoder.decode([String: String].self, from: encoded)
print("デコード結果:", decoded)
