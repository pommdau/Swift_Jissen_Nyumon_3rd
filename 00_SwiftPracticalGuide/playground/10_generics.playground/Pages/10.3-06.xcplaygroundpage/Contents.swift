func sorted<T : Collection>(_ argument: T) -> [T.Element]
     where T.Element : Comparable {
    return argument.sorted()
}

sorted([3, 2, 1]) // [1, 2, 3]