let optionalA = Optional("a")
let optionalB = Optional("b")

if let a = optionalA, let b = optionalB {
    print("値は\(a)と\(b)です")
} else {
    print("どちらかの値が存在しません")
}
