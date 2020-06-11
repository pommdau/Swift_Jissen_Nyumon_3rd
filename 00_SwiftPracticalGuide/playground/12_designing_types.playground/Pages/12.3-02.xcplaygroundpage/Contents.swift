struct User {
    let id: Int
    let name: String
    let mailAddress: String?

    // idとnameがOptional<Wrapped>型となるためコンパイルエラー
//     init(json: [String : Any]) {
//         id = json["id"] as? Int
//         name = json["name"] as? String
//         mailAddress = json["mailAddress"] as? String
//     }
}