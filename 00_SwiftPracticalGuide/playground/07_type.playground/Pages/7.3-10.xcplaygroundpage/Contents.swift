struct Temperature {
    // 摂氏温度
    var celsius: Double = 0.0

    // 華氏温度
    var fahrenheit: Double {
        get {
            return (9.0 / 5.0) * celsius + 32.0
        }

        set {
            celsius = (5.0 / 9.0) * (newValue - 32.0)
        }
    }
}

var temperature = Temperature()
temperature.celsius // 0
temperature.fahrenheit // 32

temperature.celsius = 20
temperature.celsius // 20
temperature.fahrenheit // 68

temperature.fahrenheit = 32
temperature.celsius // 0
temperature.fahrenheit // 32