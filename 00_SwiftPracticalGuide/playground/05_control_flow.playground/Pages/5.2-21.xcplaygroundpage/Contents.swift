let optionalA: Int? = 1

switch optionalA {
case .some(let a) where a > 10:
    print("10より大きい値\(a)が存在します")
default:
    print("値が存在しない、もしくは10以下です")
}
