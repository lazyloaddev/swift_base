func sum<T: Numeric>(a: T, b: T) -> T {
    a + b
}

@main
struct Application {
    static func main() throws {
        let a = sum(a: "привет", b: "мир")
        print(a)
    }
    
}

/*
 func sum<T: Numeric>(a: T, b: T) -> T {
     a + b
 }

 @main
 struct Application {
     static func main() throws {
         let a = 12
         let b = 45.0
         let a = sum(a: a, b: b)
         print(a)
     }
     
 }
 */

/*
 func sum<T: Numeric>(a: T, b: T) -> T {
     a + b
 }

 @main
 struct Application {
     static func main() throws {
         let a = sum(a: 12, b: 45)
         let b = sum(a: 12.5, b: 45.1)
         print(a, b)
     }
     
 }
 */

/*
 struct A<T> {
     
     func somePrint<T, M>(a: T, b: M) {
         print(a, b)
     }
     
 }

 @main
 struct Application {
     static func main() throws {
         var a = A<Int>()
         a.somePrint(a: "Пока", b: "Привет")
     }
     
 }
 */

/*
 struct A<T> {
     
     
     func somePrint<M>(a: T, b: M) {
         print(a, b)
     }
     
 }

 @main
 struct Application {
     static func main() throws {
         var a = A<Int>()
         a.somePrint(a: 1, b: "Привет")
     }
     
 }
 */

/*
 struct Person<LeftPocket, RightPocket, PantsPocket> {
     var leftPocket: LeftPocket?
     var rightPocket: RightPocket?
     var pantsPocket: PantsPocket?
 }

 @main
 struct Application {
     static func main() throws {
         let p = Person()
         p.leftPocket = 1
         print(p)
     }
     
 }
 */

/*
 struct Person<LeftPocket, RightPocket, PantsPocket> {
     let leftPocket: LeftPocket
     let rightPocket: RightPocket
     let pantsPocket: PantsPocket
 }

 @main
 struct Application {
     static func main() throws {
         let p = Person(leftPocket: 1, rightPocket: true, pantsPocket: "Привет")
         print(p)
     }
     
 }
 */
/*
 func printSome<A, B>(a: A, b: B) {
     print(a, b)
 }

 @main
 struct Application {
     static func main() throws {
         printSome(a: 1, b: "1")
     }
     
 }
 */

/*
 struct Person<LeftPocket, RightPocket, PantsPocket> {
     let leftPocket: LeftPocket
     let rightPocket: RightPocket
     let pantsPocket: PantsPocket
 }
 */
/*
 struct A<T, G, B> {
     let a: T
     let b: G
     let c: B
     
     init(a: T, b: G, c: B) {
         self.a = a
         self.b = b
         self.c = c
     }
 }

 @main
 struct Application {
     static func main() throws {
         let a = A<Int, Bool, String>(a: 1, b: true, c: "привет")
     }
     
 }
 */

/*
 struct A<T> {}
 */
/*
 struct A<T> {
     let a: T
 }

 @main
 struct Application {
     static func main() throws {
         let a = A<Int>(a: 7)
         let b = A<String>(a: "привет")
     }
     
 }
 */

/*
 struct A {
     let a: Int
 }

 @main
 struct Application {
     static func main() throws {
         let a = A(a: 7)
         let b = A(a: 10)
         let c = A(a: 15)
     }
     
 */

/*
 struct Grid<T> {
     private var data: [[T?]]
     
     init(size: Int) {
         data = []
         for _ in (0..<size) {
             var rowData = [T?]()
             for _ in (0..<size) {
                 rowData.append(nil)
             }
             data.append(rowData)
         }
     }
     
     subscript(row: Int, column: Int) -> T? {
         get {
             guard
                 row >= 0 && row < data.count,
                 column >= 0 && column < data.count
             else { return nil }
             return data[row][column]
         }
         set {
             guard
                 row >= 0 && row < data.count,
                 column >= 0 && column < data.count
             else { return }
             data[row][column] = newValue
         }
     }
     
 }

 @main
 struct Application {
     static func main() throws {
         var gridInt = Grid<Int>(size: 10)
         gridInt[1, 1] = 16
         
         var gridString = Grid<String>(size: 10)
         gridString[1, 1] = "Привет"
     }
     
 }
 */

/*
 struct GridString {
     private var data: [[String]]
     
     init(size: Int) {
         data = []
         for _ in (0..<size) {
             var rowData = [String]()
             for _ in (0..<size) {
                 rowData.append("")
             }
             data.append(rowData)
         }
     }
     
     subscript(row: Int, column: Int) -> String? {
         get {
             guard
                 row >= 0 && row < data.count,
                 column >= 0 && column < data.count
             else { return nil }
             return data[row][column]
         }
         set {
             guard
                 row >= 0 && row < data.count,
                 column >= 0 && column < data.count
             else { return }
             data[row][column] = newValue ?? ""
         }
     }
     
 }

 struct GridInt {
     private var data: [[Int]]
     
     init(size: Int) {
         data = []
         for _ in (0..<size) {
             var rowData = [Int]()
             for _ in (0..<size) {
                 rowData.append(0)
             }
             data.append(rowData)
         }
     }
     
     subscript(row: Int, column: Int) -> Int? {
         get {
             guard
                 row >= 0 && row < data.count,
                 column >= 0 && column < data.count
             else { return nil }
             return data[row][column]
         }
         set {
             guard
                 row >= 0 && row < data.count,
                 column >= 0 && column < data.count
             else { return }
             data[row][column] = newValue ?? 0
         }
     }
     
 }
 */

/*
 let array: Array<Int> = Array<Int>(arrayLiteral: 1, 2, 3, 4)
 */

/*
 struct Grid {
     private var data: [[Any]]
     
     init(size: Int) {
         data = []
         for _ in (0..<size) {
             var rowData = [String]()
             for _ in (0..<size) {
                 rowData.append("")
             }
             data.append(rowData)
         }
     }
     
     subscript(row: Int, column: Int) -> Any? {
         get {
             guard
                 row >= 0 && row < data.count,
                 column >= 0 && column < data.count
             else { return nil }
             return data[row][column]
         }
         set {
             guard
                 row >= 0 && row < data.count,
                 column >= 0 && column < data.count
             else { return }
             data[row][column] = newValue ?? ""
         }
     }
     
 }

 @main
 struct Application {
     static func main() throws {
         var grid = Grid(size: 10)
         grid[1, 1] = "привет"
     }
     
 }
 */

/*
 struct Grid {
     private var data: [[String]]
     
     init(size: Int) {
         data = []
         for _ in (0..<size) {
             var rowData = [String]()
             for _ in (0..<size) {
                 rowData.append("")
             }
             data.append(rowData)
         }
     }
     
     subscript(row: Int, column: Int) -> String? {
         get {
             guard
                 row >= 0 && row < data.count,
                 column >= 0 && column < data.count
             else { return nil }
             return data[row][column]
         }
         set {
             guard
                 row >= 0 && row < data.count,
                 column >= 0 && column < data.count
             else { return }
             data[row][column] = newValue ?? ""
         }
     }
     
 }
 */
