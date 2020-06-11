struct Color {
    var red: Int
    var green: Int
    var blue: Int
}

var a = Color(red: 255, green: 0, blue: 0) // aに赤を代入
var b = a // bに赤を代入
a.red = 0 // aを黒に変更する

// aは黒になる
a.red // 0
a.green // 0
a.blue // 0

// bは赤のまま
b.red // 255
b.green // 0
b.blue // 0