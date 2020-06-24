struct SomeStruct {
    var variable = 123 // 再代入可能なプロパティ
    let constant = 456 // 再代入不可能なプロパティ
}

let someStruct = SomeStruct()
let a = someStruct.variable // 123
let b = someStruct.constant // 456