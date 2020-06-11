struct Temperature {
    var celsius: Double = 0.0

    var fahrenheit: Double {
        get {
            return (9.0 / 5.0) * celsius + 32.0
        }

        set(newFahrenheit) {
            celsius = (5.0 / 9.0) * (newFahrenheit - 32.0)
        }
    }
}