let rangeThrough = ...3.0 // PartialRangeThrough(...3.0)
rangeThrough.upperBound // 3
// rangeThrough.lowerBound // lowerBoundは存在しないためコンパイルエラー

let rangeUpTo = ..<3.0 // PartialRangeUpTo(..<3.0)
rangeUpTo.upperBound // 3
// rangeUpTo.lowerBound // lowerBoundは存在しないためコンパイルエラー

let rangeFrom = 3.0... // PartialRangeFrom(3.0...)
rangeFrom.lowerBound // 3
// rangeFrom.upperBound // upperBoundは存在しないためコンパイルエラー

let countableRangeFrom = 3... // CountablePartialRangeFrom(3...)
rangeFrom.lowerBound // 3
// rangeFrom.upperBound // upperBoundは存在しないためコンパイルエラー