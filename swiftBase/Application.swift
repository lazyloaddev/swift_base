struct A {
    let age: Int
    let name: String
    
    init(age: Int, name: String) {
        self.age = age
        self.name = name
    }
}

@main
struct Application {
    static func main() throws {
        let a = A(age: 12, name: "Иван")
        let b = A(age: 12, name: "Иван")
        let result = a == b
        print(a)
    }
}

/*
 class A {
     let age: Int
     let name: String
     
     init(age: Int, name: String) {
         self.age = age
         self.name = name
     }
 }

 @main
 struct Application {
     static func main() throws {
         let a = A(age: 12, name: "Иван")
         let b = A(age: 12, name: "Иван")
         let result = a == b
         print(a)
     }
 }
 */

/*
 struct A {
     let age: Int
     let name: String
     
     init(age: Int, name: String) {
         self.age = age
         self.name = name
     }
 }

 @main
 struct Application {
     static func main() throws {
         let a = A(age: 12, name: "Иван")
         print(a)
     }
 }
 */

/*
 struct A {
     var age = 0
     
     mutating func incrementAge() {
         age += 1
     }
 }

 @main
 struct Application {
     static func main() throws {
         let a = A()
         a.incrementAge()
     }
 }

 */
/*
 struct A {
     let age: Int
     let name: String
     
     init(age: Int, name: String) {
         self.age = age
         self.name = name
     }
 }

 @main
 struct Application {
     static func main() throws {
       let a = A(age: 12, name: "Иван")
     }
 }
 */
/*
 struct Square {
     private(set) var sideA: Int
     private(set) public var sideB: Int
     static let zeroSide = 0
     
     init(sideA: Int, sideB: Int) {
         self.sideA = sideA
         self.sideB = sideB
     }
     
     func area() -> Int {
         sideA * sideB
     }
     
     static func makeZero() -> Square {
         Square(sideA: zeroSide, sideB: zeroSide)
     }
     
     func test() {
         print(Self.zeroSide)
         let a = Self.makeZero()
         print(a)
     }
     
 }
 */
