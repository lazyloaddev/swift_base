import Darwin
import Foundation

let symbols = (
    empty: " ",
    player1: "X",
    player2: "O"
)
var field = [[String]]()

print("Добро пожаловать в игру крестики нолики")
while true {
    let player1Name = getDataFromUser(description: "Введите имя первого игрока")
    guard player1Name.count != 0 else {
        print("Вы ввели неверное имя первого игрока")
        continue
    }
    let player2Name = getDataFromUser(description: "Введите имя второго игрока")
    guard player2Name.count != 0 else {
        print("Вы ввели неверное имя второго игрока")
        continue
    }
    let fieldSize = getDataFromUser(description: "Введите размер игрового поля")
    guard let fieldSize = Int(fieldSize), fieldSize > 0 else {
        print("Вы ввели неверный размер игрового поля")
        continue
    }
    
    field = [[String]]()
    for _ in 0..<fieldSize {
        var row = [String]()
        for _ in 0..<fieldSize {
            row.append(symbols.empty)
        }
        field.append(row)
    }
    printField()
    
    var winnerSymbol: String?
    while true {
        playerTurn(playerName: player1Name, symbol: symbols.player1)
        printField()
        if let symbol = checkPlayerWon() {
            winnerSymbol = symbol
            break
        }
        if checkIfGameOver() {
            break
        }
        
        playerTurn(playerName: player2Name, symbol: symbols.player2)
        printField()
        if let symbol = checkPlayerWon() {
            winnerSymbol = symbol
            break
        }
        if checkIfGameOver() {
            break
        }
    }
    
    if winnerSymbol == symbols.player1 {
        print("Победил: \(player1Name)")
    } else if winnerSymbol == symbols.player2 {
        print("Победил: \(player2Name)")
    } else {
        print("Игра окончилась в ничью")
    }
    
    let shouldStartNewGame = getDataFromUser(description: "Если хотите начать новую игру введите - да")
    if shouldStartNewGame != "да" {
        exit(0)
    }
    
}

func checkPlayerWon() -> String? {
    return checkPlayerWonByRows()
    ?? checkPlayerWonByColumn()
    ?? checkPlayerWonByFirstDiagonal()
    ?? checkPlayerWonBySecondDiagonal()
}

func checkPlayerWonBySecondDiagonal() -> String? {
    let fieldSize = field.count
    let lastIndex = fieldSize - 1
    let firstSymbol = field[0][lastIndex]
    guard firstSymbol != symbols.empty else {
        return nil
    }
    var isWin = true
    for i in 0..<fieldSize {
        if field[i][lastIndex - i] != firstSymbol {
            isWin = false
            break
        }
    }
    if isWin {
        return firstSymbol
    }
    
    return nil
}

func checkPlayerWonByFirstDiagonal() -> String? {
    let fieldSize = field.count
    let firstSymbol = field[0][0]
    
    guard firstSymbol != symbols.empty else {
        return nil
    }
    
    var isWin = true
    for i in 0..<fieldSize {
        if field[i][i] != firstSymbol {
            isWin = false
            break
        }
    }
    if isWin {
        return firstSymbol
    }
    
    return nil
}

func checkPlayerWonByColumn() -> String? {
    let fieldSize = field.count
    
    for i in 0..<fieldSize {
        let firstSymbol = field[0][i]
        if firstSymbol == symbols.empty {
            break
        }
        var isWin = true
        for j in 0..<fieldSize{
            if field[j][i] != firstSymbol {
                isWin = false
                break
            }
        }
        if isWin {
            return firstSymbol
        }
    }
    return nil
}

func checkPlayerWonByRows() -> String? {
    let fieldSize = field.count
    
    for i in 0..<fieldSize {
        let firstSymbol = field[i][0]
        if firstSymbol == symbols.empty {
            break
        }
        var isWin = true
        for j in 0..<fieldSize{
            if field[i][j] != firstSymbol {
                isWin = false
                break
            }
        }
        if isWin {
            return firstSymbol
        }
    }
    return nil
}

func checkIfGameOver() -> Bool {
    var isEmptyCell = false
    for row in field {
        for cell in row {
            if cell == symbols.empty {
                isEmptyCell = true
                break
            }
        }
        if isEmptyCell {
            break
        }
    }
    return !isEmptyCell
}

func playerTurn(playerName: String, symbol: String) {
    let fieldSize = field.count
    while true {
        print("\(playerName) делает ход:")
        let row = getDataFromUser(description: "Введите номер строки")
        guard let row = Int(row), row > 0, row <= fieldSize else {
            print("Введен неверный номер строки")
            continue
        }
        let column = getDataFromUser(description: "Введите номер столбца")
        guard let column = Int(column), column > 0, column <= fieldSize else {
            print("Введен неверный номер столбца")
            continue
        }
        let rowInArray = row - 1
        let columnInArray = column - 1
        
        guard field[rowInArray][columnInArray] == symbols.empty else {
            print("Такой ход уже был")
            continue
        }
        field[rowInArray][columnInArray] = symbol
        break
    }
}

func printField() {
    let fieldSize = field.count
    var fieldForamtedString = ""
    for row in field {
        fieldForamtedString += "|"
        for cell in row {
            fieldForamtedString += "\(cell)|"
        }
        fieldForamtedString += "\n"
        for _ in 0..<(fieldSize * 2 + 1) {
            fieldForamtedString += "-"
        }
        fieldForamtedString += "\n"
    }
    print(fieldForamtedString)
}

func getDataFromUser(description: String) -> String {
    print(description)
    return readLine() ?? ""
}
