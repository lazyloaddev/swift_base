class Filed {
    let fieldSize: Int
    var field = [[String]]()
    
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
    
    subscript() -> Int {
        fieldSize
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

@main
struct Application {
    static func main() throws {
        let field = Filed(fieldSize: 3)
        field.makeField()
        field.symbol(row: 0, column: 0)
        let dsd = field[]
        field[row: 0, column: 0]
    }
}

/*
 subscript(row: Int, column: Int) -> String? {
     get {
         guard row < fieldSize, column < fieldSize else { return nil }
         
         return field[row][column]
     }
 }
 */

/*
 class Filed {
     let fieldSize: Int
     var field = [[String]]()
     
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
     
     subscript() -> Int {
         fieldSize
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

/*
 class Filed {
     let fieldSize: Int
     var field = [[String]]()
     
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
     
 }
 */

/*
 let fieldSize = 3
 var field = [[String]]()
 for _ in 0..<fieldSize {
     var row = [String]()
     for _ in 0..<fieldSize {
         row.append(" ")
     }
     field.append(row)
 }
 */
