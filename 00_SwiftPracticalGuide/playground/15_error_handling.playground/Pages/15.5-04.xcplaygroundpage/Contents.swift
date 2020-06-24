func title(forButtonAt index: Int) -> String {
    switch index {
    case 0:
        return "赤"
    case 1:
        return "青"
    case 2:
        return "黄"
    default:
        fatalError("想定外のボタンのインデックス\(index)を受け取りました")
    }
}