struct Progression {
    var numbers: [Int]

    subscript(index: Int) -> Int {
        return numbers[index]
    }
}

var progression = Progression(numbers: [1, 2, 3])
progression[0] // 1