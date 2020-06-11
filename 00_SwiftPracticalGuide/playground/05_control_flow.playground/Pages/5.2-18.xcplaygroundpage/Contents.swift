enum SomeEnum {
    case foo
    case bar
    case baz
}

let foo = SomeEnum.foo

// switch foo {
// case .foo:
//     print(".foo")
// case .bar:
//     print(".bar")
// 
// // .bazが想定されていないため網羅的ではなく、コンパイルエラーとなる
// }