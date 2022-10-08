class A {
    let a: Int
    
    init(a: Int) {
        self.a = a
    }
    
    deinit {
        print("объект выгружен из памяти")
    }
    
}

@main
struct Application {
    static func main() throws {
        test()
    }
    
    static func test() {
        let a = A(a: 8)
    }
}

/*
 class A {
     let a: Int
     
     init(a: Int) {
         print("Фаза 1, класс А")
         self.a = a
         print("Фаза 2, класс А")
     }
 }

 class B: A {
     
     let b: Int
     
     init(a: Int, b: Int) {
         self.b = b
         print("Фаза 1, класс B")
         super.init(a: a)
         print("Фаза 2, класс B")
     }
     
 }

 class C: B {
     
     let c: Int
     
     init(a: Int, b: Int, c: Int) {
         self.c = c
         print("Фаза 1, класс C")
         super.init(a: a, b: b)
         print(self.some())
         print("Фаза 2, класс C")
     }
     
     convenience init() {
         print("Фаза 1, класс C вспомогательный конструктор")
         self.init(a: 1, b: 2, c: 3)
         print("Фаза 2, класс C вспомогательный конструктор")
     }
     
     func some() {
         print("some")
     }
     
 }
 */

/*
 Фаза 1, класс C вспомогательный конструктор
 Фаза 1, класс C
 Фаза 1, класс B
 Фаза 1, класс А
 Фаза 2, класс А
 Фаза 2, класс B
 Фаза 2, класс C
 Фаза 2, класс C вспомогательный конструктор
 */

/*
 class A {
     
     let sideA: Int
     let sideB: Int
     
     init(sideA: Int, sideB: Int) {
         self.sideA = sideA
         self.sideB = sideB
     }
     
     convenience init(side: Int) {
         self.init(sideA: side, sideB: side)
     }
     
     convenience init() {
         self.init(sideA: 10, sideB: 10)
     }
     
 }
 */

/*
 class A {
     
     let sideA: Int
     let sideB: Int
     
     init(sideA: Int, sideB: Int) {
         self.sideA = sideA
         self.sideB = sideB
     }
     
     required init(side: Int) {
         self.sideA = side
         self.sideB = side
     }
     
 }

 class B: A {
     init() {
         super.init(sideA: 10, sideB: 12)
     }
     
     required init(side: Int) {
         super.init(side: side)
     }
 }
 */

/*
 class A {
     
     init() {
         print("1")
     }
     
 }

 class B: A {
     override init() {
         print("2")
     }
 }
 */
/*
 class A {
     
     let sideA: Int
     let sideB: Int
     
     init(sideA: Int, sideB: Int) {
         self.sideA = sideA
         self.sideB = sideB
     }
     
     init(side: Int) {
         self.sideA = side
         self.sideB = side
     }
     
 }

 class B: A {
     init() {
         super.init(sideA: 10, sideB: 12)
     }
 }
 */

/*
 class A {
     
     let sideA: Int
     let sideB: Int
     
     init(sideA: Int, sideB: Int) {
         self.sideA = sideA
         self.sideB = sideB
     }
     
 }

 class B: A {
     init(side: Int) {
         super.init(sideA: side, sideB: side)
     }
 }
 */
/*
 class A {
     
     let sideA: Int
     let sideB: Int
     
     init(sideA: Int, sideB: Int) {
         self.sideA = sideA
         self.sideB = sideB
     }
     
 }

 class B: A {
     override init(sideA: Int, sideB: Int) {
         super.init(sideA: sideA * 2, sideB: sideB * 2)
     }
 }
 */

/*
 class A {
     
     let sideA: Int
     let sideB: Int
     
     init(sideA: Int, sideB: Int) {
         self.sideA = sideA
         self.sideB = sideB
     }
     
 }

 class B: A {}
 */

/*
 class A {
     
     init() {
         print("1")
     }
     
 }

 class B: A {}

 @main
 struct Application {
     static func main() throws {
         let b = B()
     }
 }
 */
/*
 class Square {
     let sideA: Int
     let sideB: Int
     
     init?(sideA: Int, sideB: Int) {
         guard sideA > 0 && sideB > 0 else { return nil }
         self.sideA = sideA
         self.sideB = sideB
     }
     
 }
 */

/*
 class Square {
     let sideA: Int
     let sideB: Int
     
     init(sideA: Int, sideB: Int) {
         self.sideA = sideA
         self.sideB = sideB
     }
     
     init(side: Int) {
         self.sideA = side
         self.sideB = side
     }
     
     init(sideA: Int) {
         self.sideA = sideA
     }
     
 }
 */

/*
 class Square {
     let sideA: Int
     let sideB: Int
     
     init(sideA: Int, sideB: Int) {
         self.sideA = sideA
         self.sideB = sideB
     }
     
     init(side: Int) {
         self.sideA = side
         self.sideB = side
     }
 }

 @main
 struct Application {
     static func main() throws {
         let square1 = Square(sideA: 10, sideB: 20)
         let square2 = Square(side: 4)
     }
 }
 */

/*
 class A {}

 class B {
     let f = 1
 }

 let a = A()
 let b = B()
 */

/*
 class A {
     init(a: String) {
         print(a)
     }
 }

 @main
 struct Application {
     static func main() throws {
         let a = A()
     }
 */

/*
 class A {
     init() {}
 }
 let a = A()
 */
/*
 class A {}
 let a = A()
 */
