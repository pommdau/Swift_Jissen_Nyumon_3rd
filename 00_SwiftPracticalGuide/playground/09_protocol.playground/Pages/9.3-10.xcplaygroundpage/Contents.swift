protocol Container {
    associatedtype Content
}

protocol SomeData {
    associatedtype Value
    associatedtype ValueContainer: Container where
        ValueContainer.Content: Equatable, ValueContainer.Content == Value
}