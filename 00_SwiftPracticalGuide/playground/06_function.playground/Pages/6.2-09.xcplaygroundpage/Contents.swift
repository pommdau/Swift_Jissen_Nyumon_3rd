func greet(user: inout String) {
    if user.isEmpty {
        user = "Anonymous"
    }
    print("Hello, \(user)")
}

var user: String = ""
greet(user: &user)
