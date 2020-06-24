var queue = [() -> Void]()

func enqueue(operation: @escaping () -> Void) {
    queue.append(operation)
}

enqueue { print("executed") }
enqueue { print("executed") }

queue.forEach { $0() }
