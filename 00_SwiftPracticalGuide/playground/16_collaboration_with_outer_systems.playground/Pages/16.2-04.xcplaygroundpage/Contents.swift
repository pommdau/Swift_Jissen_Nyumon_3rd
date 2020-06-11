struct NonCodableStruct {}

// nonCodableStructプロパティの型が
// Codableに準拠していないためコンパイルエラー
// struct CodableStruct : Codable {
//     let nonCodableStruct: NonCodableStruct
// }