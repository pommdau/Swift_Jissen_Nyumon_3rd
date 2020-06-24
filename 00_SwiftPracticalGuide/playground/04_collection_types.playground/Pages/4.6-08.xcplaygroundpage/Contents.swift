let array = [1, 2, 3, 4, 5, 6]
let sum = array.reduce(0, { result, element in result + element })
sum // 21

let concat = array.reduce("", { result, element in result + String(element) })
concat // "123456"