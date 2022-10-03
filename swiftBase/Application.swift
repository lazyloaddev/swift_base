class Person {
    var name: String {
        willSet {
            print("Имя было изменено. Старое имя \(name). Новое имя \(newValue)")
        }
    }

    init(name: String) {
        self.name = name
    }
    
}

@main
struct Application {
    static func main() throws {
        let a = Person(name: "Иван")
        a.name = "Петр"
    }
}

/*
 class Person {
     var name: String {
         didSet {
             print("Имя было изменено. Старое имя \(oldValue). Новое имя \(name)")
         }
     }

     init(name: String) {
         self.name = name
     }
     
 }

 @main
 struct Application {
     static func main() throws {
         let a = Person(name: "Иван")
         a.name = "Петр"
     }
 }
 */
/*
 class Person {
     var name: String {
         willSet {
             print(newValue)
         }
         didSet {
             print(oldValue)
         }
     }

     init(name: String) {
         self.name = name
     }
     
 }
 */
/*
 class Person {
     var name: String
     var surname: String
     
     var fullName: String {
         return "\(name) \(surname)"
     }

     init(name: String, surname: String) {
         self.name = name
         self.surname = surname
     }
     
 }
 */

/*
 class Person {
     var name: String
     var surname: String
     
     var fullName: String {
         get {
             return "\(name) \(surname)"
         }
     }

     init(name: String, surname: String) {
         self.name = name
         self.surname = surname
     }
     
 }
 */
/*
 class Person {
     var age: Int

     init(age: Int) {
         self.age = age
     }
     
     func ageAsString() -> String {
         return String(age)
     }
     
     func setAge(_ age: String) {
         self.age = Int(age) ?? 0
     }
     
 }
 */
/*
 class Person {
     var age: Int
     var stringAge: String {
         get {
             return String(age)
         }
         set {
             age = Int(newValue) ?? 0
         }
     }
     init(age: Int) {
         self.age = age
     }
     
 }
 */

/*
 class A {
     var one: String {
         get {
             return "Hello"
         }
         set {
             print(newValue)
         }
     }
     
 }

 @main
 struct Application {
     static func main() throws {
         let a = A()
         print(a.one)
         a.one = "world"
     }
 */

/*
 class A {
     lazy var one = SomeBigImage()
 }
 */
/*
 class A {
     lazy var one = "hello"
 }

 @main
 struct Application {
     static func main() throws {
         let a = A()
         a.one = "world"
     }
 }
 */

/*
 class A {
     var one: String?
 }

 @main
 struct Application {
     static func main() throws {
         let a = A()
         a.one = "world"
     }
 }
 */
/*
 class A {
     var one: String
     
     init() {
         self.one = "Hello"
     }
 }

 @main
 struct Application {
     static func main() throws {
         let a = A()
         a.one = "world"
     }
 }
 */

/*
 class A {
     var one = "Hello"
 }
 */

/*
 class A {
     let one = "Hello"
     let two: Int
     
     init() {
         two = 2
     }
 }
 */
