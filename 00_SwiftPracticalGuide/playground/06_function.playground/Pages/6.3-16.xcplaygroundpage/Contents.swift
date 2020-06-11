func executeTwice(operation: () -> Void) {
    operation()
    operation()
}

executeTwice { print("executed") }
