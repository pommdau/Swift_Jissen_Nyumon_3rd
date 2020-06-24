func someFunction<T>(_ argument: T) -> T {
    return argument
}

let int = someFunction(1) // 1
let string = someFunction("a") // "a"