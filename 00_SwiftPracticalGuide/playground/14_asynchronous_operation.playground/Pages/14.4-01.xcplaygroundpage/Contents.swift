import Foundation

class SomeThread : Thread {
    override func main() {
        print("executed.")
    }
}

let thread = SomeThread()
thread.start()
