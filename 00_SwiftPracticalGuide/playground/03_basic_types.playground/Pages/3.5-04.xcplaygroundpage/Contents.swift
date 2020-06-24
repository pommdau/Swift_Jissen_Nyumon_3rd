var a: Int?

a = nil // nilリテラルの代入による.noneの生成
a = Optional(1) // イニシャライザによる.someの生成
a = 1 // 値の代入による.someの生成