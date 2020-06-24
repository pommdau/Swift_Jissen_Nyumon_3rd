import Dispatch

class Temperature {
    var celsius: Double = 0
}

let temperature = Temperature()
temperature.celsius = 25

// 別スレッドでtemperatureの値を編集
let dispatchQueue = DispatchQueue.global(qos: .default)
dispatchQueue.async {
    temperature.celsius += 1
}

temperature.celsius += 1
temperature.celsius // 非同期処理の実行タイミングによって結果が異なる