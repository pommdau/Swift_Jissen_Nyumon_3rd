let a = 1

func someFunction() {
    let a = 2
    print("local a:", a)
}

someFunction()
print("global a:", a)
