enum DatabaseError : Error {
    case entryNotFound
    case duplicatedEntry
    case invalidEntry(reason: String)
}

enum NetworkError : Error {
    case timedOut
    case cancelled
}