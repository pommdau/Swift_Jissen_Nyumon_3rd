protocol ProtocolA {
    var id: Int { get }
}

protocol ProtocolB {
    var title: String { get }
}

// ProtocolCはid、titleの2つを要求するプロトコルとなる
protocol ProtocolC : ProtocolA, ProtocolB {}