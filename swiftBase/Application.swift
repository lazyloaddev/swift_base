class Square {
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

@main
struct Application {
    static func main() throws {
    }
}

/*
 class Square {
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
         print(Square.zeroSide)
         let a = Square.makeZero()
         print(a)
     }
     
 }
 */

/*
 static func test() {
     print(zeroSide)
     print(self.zeroSide)
     let a = makeZero()
     print(a)
 }
 */
/*
 func test() {
     print(sideA)
     print(self.sideA)
     let area = area()
 }
 */
/*
 class Square {
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
     
 }

 @main
 struct Application {
     static func main() throws {
         print(Square.zeroSide)
         let a = Square.makeZero()
         print(a)
     }
 }
 */
/*
 class A {
     static let a = 1
     
     static func some() {
         print(a)
     }
 }
 */
/*
 class Square {
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
     
 }

 @main
 struct Application {
     static func main() throws {
         let square = Square.makeZero()
     }
 }
 */

/*
 class Square {
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
 }

 func makeZeroSquare() -> Square {
     Square(sideA: Square.zeroSide, sideB: Square.zeroSide)
 }

 @main
 struct Application {
     static func main() throws {
         let square = makeZeroSquare()
     }
 }

 */

/*
 class Square {
     private(set) var sideA: Int
     private(set) public var sideB: Int
     static let zeroSide = 0
     
     init(sideA: Int, sideB: Int) {
         self.sideA = sideA
         self.sideB = sideB
     }
     
     init() {
         self.sideA = 0
         self.sideB = 0
     }
     
     func area() -> Int {
         sideA * sideB
     }
 }

 @main
 struct Application {
     static func main() throws {
         let square = Square()
     }
 }
 */

/*
 @main
 struct Application {
     static func main() throws {
         let square = Square(sideA: 0, sideB: 0)
     }
 }
 */
/*
 class Square {
     private(set) var sideA: Int
     private(set) public var sideB: Int
     let zeroSide = 0
     
     init(sideA: Int, sideB: Int) {
         self.sideA = sideA
         self.sideB = sideB
     }
     
     func area() -> Int {
         sideA * sideB
     }
 }

 @main
 struct Application {
     static func main() throws {
         let square = Square(sideA: 10, sideB: 20)
         print(square.zeroSide)
     }
 }
 */

/*
 class Double {
     let pi: Double = 3.14
 }
 class Float {
     let pi: Float = 3.14
 }

 @main
 struct Application {
     static func main() throws {
         print(Double.pi)
         print(Float.pi)
     }
 }

 @main
 struct Application {
     static func main() throws {
         print(1.0.pi)
         print(Float(1.0).pi)
     }
 }
 */

/*
 let pi = 3.14

 @main
 struct Application {
     static func main() throws {
         print(pi)
     }
 }
 */

/*
 class Square {
     private(set) var sideA: Int
     private(set) public var sideB: Int
     
     init(sideA: Int, sideB: Int) {
         self.sideA = sideA
         self.sideB = sideB
     }
     
     func area() -> Int {
         sideA * sideB
     }
     
     static let zeroSide = 0
     
     static func makeZeroSquare() -> Square {
         return Square(sideA: zeroSide, sideB: zeroSide)
     }
 }

 @main
 struct Application {
     static func main() throws {
         let square = Square.makeZeroSquare()
     }
 }


 */
