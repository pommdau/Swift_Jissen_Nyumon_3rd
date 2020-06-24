enum Color {
    case rgb(Int, Int, Int)
    case cmyk(Int, Int, Int, Int)
}

let color = Color.rgb(100, 200, 255)

switch color {
case .rgb(let r, let g, let b):
    print(".rgb: (\(r), \(g), \(b))")

case .cmyk(let c, let m, let y, let k):
    print(".cmyk: (\(c), \(m), \(y), \(k))")
}
