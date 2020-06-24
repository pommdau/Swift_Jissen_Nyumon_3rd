extension Collection where Element == Int {
    var sum: Int {
        return reduce(0) { return $0 + $1 }
    }
}

let integers = [1, 2, 3]
integers.sum // 6

let strings = ["a", "b", "c"]
// stringsの要素はInt型でないため、sumプロパティは利用できない
// strings.sum // コンパイルエラー