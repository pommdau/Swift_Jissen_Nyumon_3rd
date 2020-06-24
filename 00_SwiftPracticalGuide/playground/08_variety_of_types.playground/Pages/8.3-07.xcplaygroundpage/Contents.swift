struct Mail {
    var subject: String = "(No Subject)" 
    var body: String

    // 以下と同等のイニシャライザが自動的に定義される
    // init(subject: String = "(No Subject)", body: String) {
    //     self.subject = subject
    //     self.body = body
    // }
}

let noSubject = Mail(body: "Hello!")
noSubject.subject // "(No Subject)"
noSubject.body // "Hello!"

let greeting = Mail(subject: "Greeting", body: "Hello!")
greeting.subject // "Greeting"
greeting.body // "Hello!"