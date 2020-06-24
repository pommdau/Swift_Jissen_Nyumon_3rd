// struct Greeting {
//     let to: String
//     var body: String {
//         return "Hello, \(to)!"
//     }
// 
//     init(dictionary: [String: String]) {
//         if let to = dictionary["to"] {
//             self.to = to
//         }
//         // プロパティtoを初期化できないケースを
//         // 定義していないのでコンパイルエラー
//     }
// }