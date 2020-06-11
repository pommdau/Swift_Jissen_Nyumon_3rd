protocol Target {
    var identifier: String { get set }
    var count: Int { get set }
    mutating func action()
}

extension Target {
    mutating func action() {
        count += 1
        print("id: \(identifier), count: \(count)")
    }
}

struct ValueTypeTarget : Target {
    var identifier = "Value Type"
    var count = 0

    init() {}
}

class ReferenceTypeTarget : Target {
    var identifier = "Reference Type"
    var count = 0
}

struct Timer {
    var target: Target

    mutating func start() {
        for _ in 0..<5 {
            target.action()
        }
    }
}

// 構造体のターゲットを登録してタイマーを実行
let valueTypeTarget: Target = ValueTypeTarget()
var timer1 = Timer(target: valueTypeTarget)
timer1.start()
valueTypeTarget.count // 0

// クラスのターゲットを登録してタイマーを実行
let referenceTypeTarget = ReferenceTypeTarget()
var timer2 = Timer(target: referenceTypeTarget)
timer2.start()
referenceTypeTarget.count // 5
