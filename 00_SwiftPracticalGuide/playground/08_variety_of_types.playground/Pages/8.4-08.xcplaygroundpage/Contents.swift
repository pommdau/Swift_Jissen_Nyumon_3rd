class A {
    class func inheritanceHierarchy() -> String {
        return "A"
    }
}

class B : A {
    override class func inheritanceHierarchy() -> String {
        return super.inheritanceHierarchy() + "<-B"
    }
}

class C : B {
    override class func inheritanceHierarchy() -> String {
        return super.inheritanceHierarchy() + "<-C"
    }
}

A.inheritanceHierarchy() // "A"
B.inheritanceHierarchy() // "A<-B"
C.inheritanceHierarchy() // "A<-B<-C"