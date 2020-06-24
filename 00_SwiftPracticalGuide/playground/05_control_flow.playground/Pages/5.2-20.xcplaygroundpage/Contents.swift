enum SomeEnum {
    case foo
    case bar
    case baz
}

let baz = SomeEnum.baz

switch baz {
case .foo:
    print(".foo")
case .bar:
    print(".bar")
default:
    // .bazの場合はこのケースに入るため網羅的となる
    print("Default")
}
