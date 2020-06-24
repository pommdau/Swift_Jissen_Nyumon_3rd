struct SomeError : Error {}

do {
    throw SomeError()
    print("Success")
} catch {
    print("Failure: \(error)")
}
