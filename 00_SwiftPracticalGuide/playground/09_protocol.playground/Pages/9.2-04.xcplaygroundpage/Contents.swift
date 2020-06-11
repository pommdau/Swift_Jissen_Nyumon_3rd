protocol RemoteObject {
    var id: Int { get }
}

// ArticleはRemoteObjectへの準拠を宣言しているが、
// idプロパティが実装されていないためコンパイルエラー
// struct Article : RemoteObject {}