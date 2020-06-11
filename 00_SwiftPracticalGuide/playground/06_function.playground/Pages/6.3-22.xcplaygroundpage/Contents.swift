func execute(handler: (String) -> Void) {
    handler("executed.")
}

execute { string in
    print(string)
}
