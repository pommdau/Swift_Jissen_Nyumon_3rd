class Executor {
    let int = 0
    var lastExecutedClosure: (() -> Void)? = nil

    func execute(_ closure: @escaping () -> Void) {
        closure()
        lastExecutedClosure = closure
    }

    func executePrintInt() {
        execute {
            print(self.int)
        }
    }
}