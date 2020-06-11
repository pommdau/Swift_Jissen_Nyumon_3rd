let range = 1.0..<4.0 // Range(1.0..<4.0)
range.lowerBound // 1
range.upperBound // 4

let countableRange = 1..<4 // CountableRange(1..<4)
countableRange.lowerBound // 1
countableRange.upperBound // 4

let closedRange = 1.0...4.0 // ClosedRange(1.0...4.0)
closedRange.lowerBound // 1
closedRange.upperBound // 4

let countableClosedRange = 1...4 // CoutableClosedRange(1...4)
countableClosedRange.lowerBound // 1
countableClosedRange.upperBound // 4