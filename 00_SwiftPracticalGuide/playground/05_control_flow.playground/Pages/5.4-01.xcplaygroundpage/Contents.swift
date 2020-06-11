var count = 0

func someFunction() -> Int {
    defer {
        count += 1
    }
    return count
}

someFunction() // 0
count // 1