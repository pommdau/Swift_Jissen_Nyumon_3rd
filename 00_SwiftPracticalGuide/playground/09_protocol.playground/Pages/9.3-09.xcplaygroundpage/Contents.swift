protocol Container {
    associatedtype Content
}

protocol SomeData {
    associatedtype ValueContainer: Container where
        ValueContainer.Content == Int
}