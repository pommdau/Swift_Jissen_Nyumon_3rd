let globalA = "a"

func someFunction() {
    print(globalA) // OK
}

print(globalA) // OK

someFunction()
