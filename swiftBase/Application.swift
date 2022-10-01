import Darwin

class A {
    func getOne() -> Int {
        return 1
    }
}

class B: A {
    override func getOne() -> Int {
        return 4
    }
}

class C: B {
    override func getOne() -> Int {
        return super.getOne()
    }
}

@main
struct Application {
    static func main() throws {
        let c = C()
        print(c.getOne())
    }
}

/*
 class A {
     func getOne() -> Int {
         return 1
     }
 }

 class B: A {
     override func getOne() -> Int {
         return super.getOne()
     }
 }

 class C: B {
     override func getOne() -> Int {
         return super.getOne()
     }
 }

 @main
 struct Application {
     static func main() throws {
         let c = C()
         print(c.getOne())
     }
 }

 */

/*
 class A {
     let one: String
     
     init(one: String) {
         self.one = one
     }
     
 }

 class B: A {
     
     override init(one: String) {
         print("Привет 2")
         super.init(one: one)
     }
 }

 @main
 struct Application {
     static func main() throws {
         let b = B(one: "f")
     }
 }
 */
/*
 class A {
     
     init() {
         print("Привет 1")
     }
     
 }

 class B: A {
     
     override init() {
         print("Привет 2")
     }
 }

 @main
 struct Application {
     static func main() throws {
         let b = B()
     }
 }
 */
/*
 class A {
     
     func getOne() -> Int {
         return 1
     }
     
 }

 class B: A {
     
     override func getOne() -> Int {
         return super.getOne() + 1
     }
     
     func getTwo() -> [Int] {
         return [
             getOne(),
             super.getOne(),
             getOne() + super.getOne()
         ]
     }
 }

 @main
 struct Application {
     static func main() throws {
         let b = B()
         print(b.getTwo())
     }
 }
 */

/*
 class A {
     
     func getOne() -> Int {
         return 1
     }
     
 }

 class B: A {
     override func getOne() -> Int {
         return super.getOne() + 1
     }
 }

 @main
 struct Application {
     static func main() throws {
         let b = B()
         print(b.super.getOne())
     }
 }
 */

/*
 class A {
     
     func getOne() -> Int {
         return 1
     }
     
 }

 class B: A {
     override func getOne() -> Int {
         return 10
     }
 }

 @main
 struct Application {
     static func main() throws {
         let b = B()
         print(b.getOne())
     }
 }
 */

/*
 class A {
     
     func getOne() -> Int {
         return 1
     }
     
 }

 class B: A {
     func getTwo() -> Int {
         return getOne() + 2
     }
 }

 @main
 struct Application {
     static func main() throws {
         let b = B()
         print(b.getTwo())
     }
 }
 */

/*
 class A {
     
     func getOne() -> Int {
         return 1
     }
     
 }

 class B: A {
     func getTwo() -> Int {
         return 2
     }
 }

 @main
 struct Application {
     static func main() throws {
         let b = B()
         print(b.getOne(), b.getTwo())
     }
 }
 /* В консоле мы увидим
 1 2
 */
 */

/*
 class A {
     let one: String
     
     init(one: String) {
         self.one = one
     }
 }

 class B: A {
     let two = "Мир"
 }

 @main
 struct Application {
     static func main() throws {
         let b = B(one: "aa")
         print(b.one, b.two)
     }
 }
 */

/*
 class A {
     let one: String
     
     init(one: String) {
         self.one = one
     }
 }

 class B: A {
     let two: String
     
     init(one: String, two: String) {
         self.two = two
         super.init(one: one)
     }
 }
 */
/*
 class A {
     let one = "Привет"
 }

 class B: A {
     let two = "Мир"
 }

 @main
 struct Application {
     static func main() throws {
         let b = B()
         print(b.one, b.two)
     }
 }
 */


/*
 class A {
     
 }

 class B: A {
     
 }
 */
