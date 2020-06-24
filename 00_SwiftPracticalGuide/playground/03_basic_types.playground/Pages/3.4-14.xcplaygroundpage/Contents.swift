import Foundation

// 2つの文字列間の順序の比較
let options = String.CompareOptions.caseInsensitive
let order = "abc".compare("ABC", options: options)
order == ComparisonResult.orderedSame // true

// 文字列の探索
"abc".range(of: "bc") // 1から2の範囲を示す値