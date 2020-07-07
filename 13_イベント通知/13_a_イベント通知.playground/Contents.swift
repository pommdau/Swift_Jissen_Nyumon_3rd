import Cocoa

// MARK: - 13.2 デリゲートパターン

protocol GameDelegate : class {
    var numberOfPlayers: Int { get }
    func gameDidStart(_ game: Game)
    func gameDidEnd(_ geme: Game)
}

class TwoPersonsGameDelegate : GameDelegate {
    var numberOfPlayers: Int { return 2 }
    
    func gameDidStart(_ game: Game) {
        print("Game Start!")
    }
    
    func gameDidEnd(_ geme: Game) {
        print("Game End...")
    }
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


// MARK: - 13.3 クロージャ

class Game_02 {
    private var result = 0
    
    func start(completion: (Int) -> Void) {
        print("🍏Playing")
        result = 42
        completion(result)
    }
}

let game_02 = Game_02()
game_02.start { result in
    print("🍏Result is \(result)")
}


// キャプチャリスト
print("🍎🍎🍎キャプチャリスト🍎🍎🍎")

import PlaygroundSupport
import Dispatch

// Playgroundでの非同期実行を待つオプション
PlaygroundPage.current.needsIndefiniteExecution = true

class SomeClass {
    let id: Int
    
    init(id: Int) {
        self.id = id
    }
    
    deinit {
        print("deinit")
    }
}

do {
    let object = SomeClass(id: 42)
    let queue = DispatchQueue.main
    
    queue.asyncAfter(deadline: .now() + 3) {
        print(object.id)
    }
}
