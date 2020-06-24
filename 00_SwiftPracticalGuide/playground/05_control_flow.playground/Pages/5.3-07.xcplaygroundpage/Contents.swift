var odds = [Int]()
let array = [1, 2, 3]

for element in array {
    if element % 2 == 1 {
        odds.append(element)
        continue
    }
    print("even: \(element)")
}

print("odds: \(odds)")
