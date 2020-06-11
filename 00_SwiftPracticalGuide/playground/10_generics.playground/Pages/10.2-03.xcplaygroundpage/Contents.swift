func identity<T>(_ argument: T) -> T {
    return argument
}

let int = identity(1) // Int型
let string = identity("abc") // String型