func someFunction<T, U>(x: T, y: U) -> U {
    let _: T = x // 型アノテーションとして使用
    let _ = x // 型推論に対応
    let _ = 1 as? T // 型のキャストに使用
    return y
}