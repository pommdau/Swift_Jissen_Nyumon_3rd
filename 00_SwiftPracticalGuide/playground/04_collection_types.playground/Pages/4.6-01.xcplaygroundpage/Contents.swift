let array = [1, 2, 3, 4, 5, 6]

var enumerated = [] as [Int]
array.forEach({ element in enumerated.append(element) })
enumerated // [1, 2, 3, 4, 5, 6]