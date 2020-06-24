var containsTwo = false
let array = [1, 2, 3]

for element in array {
    if element == 2 {
        containsTwo = true
        break
    }
    print("element: \(element)")
}
print("containsTwo: \(containsTwo)")
