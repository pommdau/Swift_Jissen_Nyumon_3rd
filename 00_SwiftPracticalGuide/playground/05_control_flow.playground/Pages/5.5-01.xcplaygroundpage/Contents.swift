let integer = 9

switch integer {
case 6:
    print("match: 6")
case 5...10:
    print("match: 5...10")
default:
    print("default")
}
