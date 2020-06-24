func print(strings: String...) {
    if strings.count == 0 {
        return
    }

    print("first: \(strings[0])")

    for string in strings {
        print("element: \(string)")
    }
}

print(strings: "abc", "def", "ghi")
