enum NewsFeedItemKind {
    case a
    case b
    case c
}

struct NewsFeedItem {
    let id: Int
    let title: String
    let type: NewsFeedItemKind
}