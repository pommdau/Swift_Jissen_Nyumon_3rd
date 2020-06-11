let optionalA = Optional(4)
switch optionalA {
case let a?:
    print(a)
default:
    print("nil")
}
