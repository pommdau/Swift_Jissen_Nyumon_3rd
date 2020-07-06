import Cocoa

// 参照型のクラスがもたらすバグ
/*
class Temperature {
    var celsius: Double = 0
}

class Country {
    var temperature: Temperature
    
    init(temperature: Temperature) {
        self.temperature = temperature
    }
}

let temperature = Temperature()
temperature.celsius = 25
let Japan = Country(temperature: temperature)
temperature.celsius = 40
let Egypt = Country(temperature: temperature)
Japan.temperature.celsius
Egypt.temperature.celsius
*/

// 値型の構造体がもたらす安全性

struct Temperature {
    var celsius: Double = 0
}

struct Country {
    var temperature: Temperature
}

var temperature = Temperature()
temperature.celsius = 25
let Japan = Country(temperature: temperature)
temperature.celsius = 40
let Egypt = Country(temperature: temperature)

Japan.temperature.celsius  // 25
Egypt.temperature.celsius  // 40


// クラスを利用するべきとき

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
    var target : Target
    mutating func start() {
        for _ in 0..<5 {
            target.action()
        }
    }
}

// Struct Target
let valueTypeTarget: Target = ValueTypeTarget()
var timer1 = Timer(target: valueTypeTarget)
timer1.start()
valueTypeTarget.count  // 0

// Class Target
let referenceTypeTarget: Target = ReferenceTypeTarget()
var timer2 = Timer(target: referenceTypeTarget)
timer2.start()
referenceTypeTarget.count  // 5


// Use deinitializer

var temporaryData: String?

class SomeClass {
    init() {
        print("Create a temporary data")
        temporaryData = "a temporary data"
    }
    
    deinit {
        print("Clean up the temporary data")
        temporaryData = nil
    }
}

var someClass: SomeClass? = SomeClass()
temporaryData  // "a temporary data"
someClass = nil
temporaryData  // nil
