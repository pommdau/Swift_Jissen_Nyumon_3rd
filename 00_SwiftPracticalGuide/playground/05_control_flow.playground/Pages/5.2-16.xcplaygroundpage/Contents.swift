let a = 1

switch a {
case Int.min..<0:
    print("aは負の値です")
case 1..<Int.max:
    print("aは正の値です")
default:
    print("aは0です")
}
