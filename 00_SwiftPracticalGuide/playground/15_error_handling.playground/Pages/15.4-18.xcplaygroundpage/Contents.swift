struct SomeError: Error {}

func someFunction(arg: Int) -> String {
    do {
        guard arg < 10 else {
            throw SomeError()
        }

        return "Success"
    } catch {
        return "Failure"
    }
}