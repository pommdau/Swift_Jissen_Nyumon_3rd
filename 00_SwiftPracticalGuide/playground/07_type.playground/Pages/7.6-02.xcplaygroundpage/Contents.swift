// 数列
struct Progression {
    var numbers: [Int]

    subscript(index: Int) -> Int {
        get {
            return numbers[index]
        }

        set {
            numbers[index] = newValue
        }
    }
}

var progression = Progression(numbers: [1, 2, 3])
let element1 = progression[1] // 2

progression[1] = 4
let element2 = progression[1] // 4