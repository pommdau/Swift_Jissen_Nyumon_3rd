func printIfPositive(_ a: Int) {
    guard a > 0 else {
        return
    }

    // guard文以降ではa > 0が成り立つことが保証される
    print(a)
}

printIfPositive(1)
