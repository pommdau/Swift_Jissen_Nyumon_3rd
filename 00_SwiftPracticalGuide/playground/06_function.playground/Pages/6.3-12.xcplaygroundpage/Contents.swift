let greeting: (String) -> String
do {
    let symbol = "!"
    greeting = { user in
        return "Hello, \(user)\(symbol)"
    }
}
greeting("Ishikawa") // Hello, Ishikawa!
// symbol // symbolは別のスコープで定義されているためコンパイルエラー