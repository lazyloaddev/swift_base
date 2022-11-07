import Foundation

class TicTackToeSubApplication: SubApplication {
    private let symbols = (
        empty: " ",
        player1: "X",
        player2: "O"
    )
    private var field = [[String]]()
    
    init() {
        super.init(
            command: "ttt",
            description: "запустить крестики нолики",
            wellcomeMessage: "Добро пожаловать в подпрограмму крестики нолики"
        )
    }
    
    override func runAction() -> SubApplicationActionResult {
        let player1Name = UserDataProvider.string("Введите имя первого игрока")
        guard player1Name.count != 0 else {
            print("Вы ввели неверное имя первого игрока")
            return .resume
        }
        let player2Name = UserDataProvider.string("Введите имя второго игрока")
        guard player2Name.count != 0 else {
            print("Вы ввели неверное имя второго игрока")
            return .resume
        }
        let fieldSize = UserDataProvider.int("Введите размер игрового поля")
        guard fieldSize > 0 else {
            print("Вы ввели неверный размер игрового поля")
            return .resume
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
        
        let shouldStartNewGame = UserDataProvider.string("Если хотите начать новую игру введите - да")
        return shouldStartNewGame == "да" ? .resume : .exit
    }
    
    private func checkPlayerWon() -> String? {
        return checkPlayerWonByRows()
        ?? checkPlayerWonByColumn()
        ?? checkPlayerWonByFirstDiagonal()
        ?? checkPlayerWonBySecondDiagonal()
    }
    
    private func checkPlayerWonBySecondDiagonal() -> String? {
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
    
    private func checkPlayerWonByFirstDiagonal() -> String? {
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
    
    private func checkPlayerWonByColumn() -> String? {
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
    
    private func checkPlayerWonByRows() -> String? {
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
    
    private func checkIfGameOver() -> Bool {
        for row in field {
            for cell in row {
                if cell == symbols.empty {
                    return false
                }
            }
        }
        return true
    }
    
    private func playerTurn(playerName: String, symbol: String) {
        let fieldSize = field.count
        while true {
            print("\(playerName) делает ход:")
            let row = UserDataProvider.int("Введите номер строки")
            guard row > 0, row <= fieldSize else {
                print("Введен неверный номер строки")
                continue
            }
            let column = UserDataProvider.int("Введите номер столбца")
            guard column > 0, column <= fieldSize else {
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
    
    private func printField() {
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
    
}
