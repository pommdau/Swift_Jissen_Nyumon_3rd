class Game {
    private var result = 0

    func start(completion: (Int) -> Void) {
        print("Playing")
        result = 42
        completion(result)
    }
}

let game = Game()
game.start { result in
    print("Result is \(result)")
}
