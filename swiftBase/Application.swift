class Passport {
    var number: String
    init(number: String) {
        self.number = number
    }
}

struct Person {
    var name: String
    var passport: Passport
    
    init(name: String, passport: Passport) {
        self.name = name
        self.passport = passport
    }
}


@main
struct Application {
    static func main() throws {
        var a = Person(
            name: "Иван",
            passport: Passport(number: "01 02 334455")
        )
        var b = a
        a.name = "Кузьма"
        a.passport.number = "00 00 000000"
        print(a.name, a.passport.number)
        print(b.name, b.passport.number)
    }
}

/*
 class A {
     var name: String
     init(name: String) {
         self.name = name
     }
     
     func copy() -> A {
         return A(name: name)
     }
 }


 @main
 struct Application {
     static func main() throws {
         var a = A(name: "Иван")
         var b = a.copy()
         print(a, b)
     }
 }
 */

/*
 class A {
     var name: String
     init(name: String) {
         self.name = name
     }
 }


 @main
 struct Application {
     static func main() throws {
         var a = A(name: "Иван")
         var b = A(name: a.name)
     }
 }
 */

/*
 class A {
     var name: String
     init(name: String) {
         self.name = name
     }
 }

 struct B {
     var name: String
     init(name: String) {
         self.name = name
     }
 }

 @main
 struct Application {
     static func main() throws {
         var a = A(name: "Иван")
         var b = a
         b.name = "Кузьма"
         var c = A(name: "Петр")
         
         var d = B(name: "Иван")
         var e = d
         d.name = "Кузьма"
         print(a.name, b.name, c.name, d.name)
     }
 }
 */

/*
 class A {
     var name: String
     init(name: String) {
         self.name = name
     }
 }

 @main
 struct Application {
     static func main() throws {
         // 1
         var a = A(name: "Иван")
         // 2
         var b = A(name: "Иван")
         // 3
         var c = A(name: "Иван")
         // 4
         b.name = "Кузьма"
         // 5
         a.name = "Петр"
         // 6
         var d = A(name: "Иван")
         // 6
         print(a.name, b.name, c.name, d.name)
     }
 }
 */
/*
 class A {
     var name: String
     init(name: String) {
         self.name = name
     }
 }

 @main
 struct Application {
     static func main() throws {
         // 1
         var a = A(name: "Иван")
         // 2
         var b = a
         // 3
         var c = b
         // 4
         b.name = "Кузьма"
         // 5
         a.name = "Петр"
         // 6
         var d = b
         print(a.name, b.name, c.name, d.name)
     }
 }
 */

/*
 struct A {
     var name: String
     init(name: String) {
         self.name = name
     }
 }

 @main
 struct Application {
     static func main() throws {
         // 1
         var a = A(name: "Иван")
         // 2
         var b = a
         // 3
         var c = b
         // 4
         b.name = "Кузьма"
         // 5
         a.name = "Петр"
         // 6
         var d = b
         print(a, b, c, d)
     }
 }

 */
