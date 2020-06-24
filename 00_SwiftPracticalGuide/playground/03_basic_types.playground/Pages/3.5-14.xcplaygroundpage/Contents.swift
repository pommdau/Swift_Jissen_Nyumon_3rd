let optionalDouble = Optional(1.0) // 1
let optionalIsInfinite: Bool?
if let double = optionalDouble {
    optionalIsInfinite = double.isInfinite
} else {
    optionalIsInfinite = nil
}

print(String(describing: optionalIsInfinite))
