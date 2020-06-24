class Temperature {
    var celsius: Double = 0
}

class Country {
    var temperature: Temperature

    init(temperature: Temperature) {
        self.temperature = temperature
    }
}

let temperature = Temperature()
temperature.celsius = 25
let Japan = Country(temperature: temperature)
temperature.celsius = 40
let Egypt = Country(temperature: temperature)
Japan.temperature.celsius // 40
Egypt.temperature.celsius // 40