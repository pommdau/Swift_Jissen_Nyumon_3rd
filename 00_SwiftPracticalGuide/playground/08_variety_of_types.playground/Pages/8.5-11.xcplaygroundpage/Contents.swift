enum Fruit: CaseIterable {
    case peach, apple(color: AppleColor), grape

    static var allCases: [Fruit] {
        return [
            .peach,
            .apple(color: .red),
            .apple(color: .green),
            .grape,
        ]
    }
}

enum AppleColor {
    case green, red
}

Fruit.allCases // [peach, {red}, {green}, grape]