protocol Ownable {
    var owner: String { get set }
}

// extension Ownable {
//     // コンパイルエラー
//     var owner: String {
//         didSet {
//             print("\(owner) was assigned as the owner")
//         }
//     }
// }