import Cocoa


// MARK: - 13.4 オブザーバパターン


class Poster {
    static let notificationName = Notification.Name("SomeNotification")
    
    func Post() {
        NotificationCenter.default.post(name: Poster.notificationName,
                                        object: nil)
    }
}

class Observer {
    init() {
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(handleNotification(_:)),
                                               name: Poster.notificationName,
                                               object: nil)
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
    
    @objc func handleNotification(_ notification: Notification) {
        print("通知を受け取りました。")
    }
}

var observer = Observer()
let poster = Poster()
poster.Post()
