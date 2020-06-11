enum AgeError: Error {
    case outOfRange
}

struct Teenager {
    let age: Int

    init(age: Int) throws {
        guard case 13...19 = age else {
            throw AgeError.outOfRange
        }

        self.age = age
    }
}