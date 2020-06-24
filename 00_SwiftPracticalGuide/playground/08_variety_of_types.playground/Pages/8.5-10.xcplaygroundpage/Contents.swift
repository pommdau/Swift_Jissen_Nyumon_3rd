enum Fruit: CaseIterable {
    case peach, apple, grape

    static var allCases: [Fruit] {
        return [
            .peach,
            .apple,
            .grape,
        ]
    }
}

Fruit.allCases // [peach, apple, grape]