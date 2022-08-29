import Darwin

let symbols = (
    empty: " ",
    player1: "X",
    player2: "O"
)
var field = [[String]]()
var players = [(name: String, symbol: String)]()
print("Добро пожаловать в игру крестики нолики")

while true {
    let player1Name = getDataFromUser(description: "Введите имя первого игрока")
    let player2Name = getDataFromUser(description: "Введите имя второго игрока")
    let fieldSize = getDataFromUser(description: "Введите размер игрового поля")
    guard
        player1Name.count != 0,
        player2Name.count != 0,
        let fieldSize = Int(fieldSize),
        fieldSize > 0
    else { continue }
    players = [
        (player1Name, symbols.player1),
        (player2Name, symbols.player2),
    ]
    resetFirld(size: fieldSize)
    printFiled()
    var winner: String?
    
    while winner == nil {
        turn(playerNumber: 0)
        if let name = checkPlayerWon() {
            winner = name
            break
        }
        turn(playerNumber: 1)
        if let name = checkPlayerWon() {
            winner = name
            break
        }
    }
    if let winner = winner {
        print("Победил: \(winner)")
    } else {
        print("Разработчик ошибся")
    }
}

func turn(playerNumber: Int) {
    let currentPlayer = players[playerNumber]
    let fieldSize = field.count
    print("\(currentPlayer.name) делает ход:")
    while true {
        let row = getDataFromUser(description: "Введите номер строки")
        guard let row = Int(row), row <= fieldSize else {
            print("Введен неверный номер строки")
            continue
        }
        let column = getDataFromUser(description: "Введите номер столбца")
        guard let column = Int(column), column <= fieldSize else {
            print("Введен неверный номер столбца")
            continue
        }
        let rowInArray = row - 1
        let columnInArray = column - 1
        guard field[rowInArray][columnInArray] == symbols.empty else {
            print("Такой ход уже был")
            continue
        }
        field[rowInArray][columnInArray] = currentPlayer.symbol
        printFiled()
        break
    }
}

func checkPlayerWon() -> String? {
    let symbol = checkPlayerWonByRows()
        ?? checkPlayerWonByColumn()
        ?? checkPlayerWonByFirstDiagonal()
        ?? checkPlayerWonBySecondDiagonal()
    
    guard let symbol = symbol else { return nil }
    
    for player in players {
        if player.symbol == symbol {
            return player.name
        }
    }
    return nil
}

func checkPlayerWonByRows() -> String? {
    let fieldSize = field.count
    
    for i in 0..<fieldSize{
        let firstSymbol = field[i][0]
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

func checkPlayerWonByColumn() -> String? {
    let fieldSize = field.count
    
    for i in 0..<fieldSize {
        let firstSymbol = field[0][i]
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

func checkPlayerWonByFirstDiagonal() -> String? {
    let fieldSize = field.count
    let firstSymbol = field[0][0]
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

func checkPlayerWonBySecondDiagonal() -> String? {
    let fieldSize = field.count
    let lastIndex = fieldSize - 1
    let firstSymbol = field[0][lastIndex]
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

func resetFirld(size: Int){
    field = [[String]]()
    for _ in 0..<size {
        var row = [String]()
        for _ in 0..<size {
            row.append(symbols.empty)
        }
        field.append(row)
    }
}

func printFiled() {
    let fieldSize = field.count
    let dashCount = fieldSize * 2 + 1
    var resultString = ""
    for row in field {
        resultString += "|"
        for cell in row {
            resultString += "\(cell)|"
        }
        resultString += "\n"
        for _ in 0..<dashCount {
            resultString += "_"
        }
        resultString += "\n"
    }
    print(resultString)
}

func getDataFromUser(description: String) -> String {
    print(description)
    return readLine() ?? ""
}
