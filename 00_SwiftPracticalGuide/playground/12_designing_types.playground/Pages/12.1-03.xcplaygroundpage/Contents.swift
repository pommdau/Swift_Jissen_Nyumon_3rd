struct Temperature {
    var celsius: Double = 0
}

struct Country {
    var temperature: Temperature
}

var temperature = Temperature()
temperature.celsius = 25
let Japan = Country(temperature: temperature)
temperature.celsius = 40
let Egypt = Country(temperature: temperature)
Japan.temperature.celsius // 25
Egypt.temperature.celsius // 40