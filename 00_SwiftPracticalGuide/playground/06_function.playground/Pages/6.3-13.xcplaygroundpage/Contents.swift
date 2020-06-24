let counter: () -> Int
do {
    var count = 0
    counter = {
        count += 1
        return count
    }
}
counter() // 1
counter() // 2