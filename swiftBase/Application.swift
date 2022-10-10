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
}

@main
struct Application {
    static func main() throws {
        let square = Square(sideA: 10, sideB: 20)
        let area = square.area()
    }
}

/*
 class Square {
     private let sideA: Int
     private let sideB: Int
     
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
         let area = square.area()
     }
 }
 */

/*
 class Square {
     var sideA = 0
     var sideB = 0
 }


 @main
 struct Application {
     static func main() throws {
         let square = Square()
         square.sideA = 10
         square.sideB = 20
         let area = square.sideA * square.sideB
     }
 }
 */

/*
 class Filed {
     let fieldSize: Int
     private var field = [[String]]()
     
     init(fieldSize: Int) {
         self.fieldSize = fieldSize
         makeField()
     }
     
     
     func makeField() {
         field = [[String]]()
         for _ in 0..<fieldSize {
             var row = [String]()
             for _ in 0..<fieldSize {
                 row.append(" ")
             }
             field.append(row)
         }
     }
     
     subscript(row: Int, column: Int) -> String? {
         get {
             guard row < fieldSize, column < fieldSize else { return nil }
             
             return field[row][column]
         }
         set(symbol) {
             guard
                 let symbol = symbol,
                 row < fieldSize,
                 column < fieldSize,
                 field[row][column] != " "
             else { return }
             
             field[row][column] = symbol
         }
     }
     
 }

 */
