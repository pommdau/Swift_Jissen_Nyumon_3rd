enum SomeEnum {
    case foo
    case bar
    case baz
}

let foo = SomeEnum.foo

switch foo {
case .foo:
    print(".foo")
case .bar:
    print(".bar")
case .baz:
    print(".baz")
}
