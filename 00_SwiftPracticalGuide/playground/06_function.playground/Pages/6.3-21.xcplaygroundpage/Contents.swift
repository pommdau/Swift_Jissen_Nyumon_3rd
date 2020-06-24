func execute(parameter: Int, handler: (String) -> Void) {
    handler("parameter is \(parameter)")
}

// トレイリングクロージャを使用しない場合
execute(parameter: 1, handler: { string in
    print(string)
})

// トレイリングクロージャを使用する場合
execute(parameter: 2) { string in
    print(string)
}
