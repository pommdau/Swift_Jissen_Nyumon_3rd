struct Progression {
    var numbers: [Int]

    subscript(index: Int) -> Int {
        return numbers[index]
    }
}

var progression = Progression(numbers: [1, 2, 3])
// progression[1] = 4 // セッタが定義されていないためコンパイルエラー