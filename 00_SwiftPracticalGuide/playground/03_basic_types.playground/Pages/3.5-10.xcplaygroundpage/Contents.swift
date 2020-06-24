let optionalA = Optional("a") // String?型

if let a = optionalA {
    print(type(of: a)) // optionalAに値がある場合のみ実行される
}
