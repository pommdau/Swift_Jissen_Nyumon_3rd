let any: Any = 1

switch any {
case is String:
    print("match: String")
case is Int:
    print("match: Int")
default:
    print("default")
}
