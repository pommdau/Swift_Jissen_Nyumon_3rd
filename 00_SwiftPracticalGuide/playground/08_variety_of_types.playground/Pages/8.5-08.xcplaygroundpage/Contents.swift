enum Color {
    case rgb(Float, Float, Float)
    case cmyk(Float, Float, Float, Float)
}

let rgb = Color.rgb(0.0, 0.33, 0.66)
let cmyk = Color.cmyk(0.0, 0.33, 0.66, 0.99)

let color = Color.rgb(0.0, 0.33, 0.66)

switch color {
case .rgb(let r, let g, let b):
    print("r: \(r), g: \(g), b: \(b)")
case .cmyk(let c, let m, let y, let k):
    print("c: \(c), m: \(m), y: \(y), k: \(k)")
}
