func someFunction<T>(_ argument1: T, _ argument2: T) {}

someFunction(1, 2) // OK
someFunction("abc", "def") // OK
// someFunction(1, "abc") // 型引数が一致しないためコンパイルエラー