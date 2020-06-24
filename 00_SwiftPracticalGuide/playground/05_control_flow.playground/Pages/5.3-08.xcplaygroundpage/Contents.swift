label: for element in [1, 2, 3] {
    for nestedElement in [1, 2, 3] {
        print("element: \(element), nestedElement: \(nestedElement)")
        break label
    }
}
