protocol GameDelegate : class {
    var numberOfPlayers: Int { get }
    func gameDidStart(_ game: Game)
    func gameDidEnd(_ game: Game)
}

class TwoPersonsGameDelegate : GameDelegate {
    var numberOfPlayers: Int { return 2 }
    func gameDidStart(_ game: Game) { print("Game start") }
    func gameDidEnd(_ game: Game) { print("Game end") }
}

class Game {
    weak var delegate: GameDelegate?

    func start() {
        print("Number of players is \(delegate?.numberOfPlayers ?? 1)")
        delegate?.gameDidStart(self)
        print("Playing")
        delegate?.gameDidEnd(self)
    }
}

let delegate = TwoPersonsGameDelegate()
let twoPersonsGame = Game()
twoPersonsGame.delegate = delegate
twoPersonsGame.start()
