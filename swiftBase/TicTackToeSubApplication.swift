import Foundation

private enum TicTackToeError: Error {
    case incorrectPlayerName(Int)
    case emptyFiled
}

private enum TicTackToeFieldError: Error {
    case rowOutOfBounds
    case columnOutOfBounds
    case turnAlreadyComplted
}

class TicTackToeSubApplication: SubApplication {
    private var field = TicTackToeField(size: 0)
    
    init() {
        super.init(
            command: "ttt",
            description: "запустить крестики нолики",
            wellcomeMessage: "Добро пожаловать в подпрограмму крестики нолики"
        )
    }
    
    override func runAction() -> SubApplicationActionResult {
        do {
            return try runTicTackToe()
        } catch TicTackToeError.incorrectPlayerName(let player) {
            let player = player == 1 ? "первого" : "второго"
            print("Вы ввели неверное имя \(player) игрока")
        } catch TicTackToeError.emptyFiled {
            print("Вы ввели неверный размер игрового поля")
        } catch {
            print("Неизвестная ошибка, потоврите операцию еще раз")
        }
        return .resume
    }
    
    private func runTicTackToe() throws -> SubApplicationActionResult {
        let player1Name = UserDataProvider.string("Введите имя первого игрока")
        guard player1Name.count != 0 else {
            throw TicTackToeError.incorrectPlayerName(1)
        }
        let player1 = TicTackToePlayer(name: player1Name, symbol: .x)
        let player2Name = UserDataProvider.string("Введите имя второго игрока")
        guard player2Name.count != 0 else {
            throw TicTackToeError.incorrectPlayerName(2)
        }
        let player2 = TicTackToePlayer(name: player2Name, symbol: .y)
        let fieldSize = UserDataProvider.int("Введите размер игрового поля")
        
        field = TicTackToeField(size: fieldSize)
        field.printToConsole()
        
        var winnerSymbol: TicTackToeFieldSymbol?
        while true {
            playerTurn(player: player1)
            field.printToConsole()
            if let symbol = field.checkFilled() {
                winnerSymbol = symbol
                break
            }
            if field.isAllTurnsDone {
                break
            }
            
            playerTurn(player: player2)
            field.printToConsole()
            if let symbol = field.checkFilled() {
                winnerSymbol = symbol
                break
            }
            if field.isAllTurnsDone {
                break
            }
        }
        
        if winnerSymbol == player1.symbol {
            print("Победил: \(player1.name)")
        } else if winnerSymbol == player2.symbol {
            print("Победил: \(player2.name)")
        } else {
            print("Игра окончилась в ничью")
        }
        
        let shouldStartNewGame = UserDataProvider.string("Если хотите начать новую игру введите - да")
        return shouldStartNewGame == "да" ? .resume : .exit
    }
    
    private func playerTurn(player: TicTackToePlayer) {
        while true {
            do {
                print("\(player.name) делает ход:")
                let row = UserDataProvider.int("Введите номер строки")
                let column = UserDataProvider.int("Введите номер столбца")
                try field.set(symbol: player.symbol, row: row, column: column)
                return
            } catch TicTackToeFieldError.rowOutOfBounds {
                print("Введен неверный номер строки")
            } catch TicTackToeFieldError.columnOutOfBounds {
                print("Введен неверный номер столбца")
            } catch TicTackToeFieldError.turnAlreadyComplted {
                print("Такой ход уже был")
            } catch {
                print("Произошла неизвестная ошибка, повторите свой ход")
            }
        }
    }
    
}

private enum TicTackToeFieldSymbol: String {
    case empty = " "
    case x = "X"
    case y = "Y"
}

private struct TicTackToePlayer {
    let name: String
    let symbol: TicTackToeFieldSymbol
}

private struct TicTackToeField {
    private var field: [[TicTackToeFieldSymbol]]
    
    init(size: Int) {
        field = [[TicTackToeFieldSymbol]]()
        for _ in 0..<size {
            var row = [TicTackToeFieldSymbol]()
            for _ in 0..<size {
                row.append(.empty)
            }
            field.append(row)
        }
    }
    
    func printToConsole() {
        let fieldSize = field.count
        var fieldForamtedString = ""
        for row in field {
            fieldForamtedString += "|"
            for cell in row {
                fieldForamtedString += "\(cell.rawValue)|"
            }
            fieldForamtedString += "\n"
            for _ in 0..<(fieldSize * 2 + 1) {
                fieldForamtedString += "-"
            }
            fieldForamtedString += "\n"
        }
        print(fieldForamtedString)
    }
    
    subscript(row: Int, column: Int) -> TicTackToeFieldSymbol {
        get throws {
            guard row > 0, row <= field.count else { throw TicTackToeFieldError.rowOutOfBounds }
            
            guard column > 0, column <= field.count else { throw TicTackToeFieldError.columnOutOfBounds }
            
            let rowInArray = row - 1
            let columnInArray = column - 1
            
            return field[rowInArray][columnInArray]
        }
        
    }
    
    mutating func set(symbol: TicTackToeFieldSymbol, row: Int, column: Int) throws {
        guard row > 0, row <= field.count else { throw TicTackToeFieldError.rowOutOfBounds }
        guard column > 0, column <= field.count else { throw TicTackToeFieldError.columnOutOfBounds }
        let rowInArray = row - 1
        let columnInArray = column - 1
        
        guard field[rowInArray][columnInArray] == .empty else {
            throw TicTackToeFieldError.turnAlreadyComplted
        }
        
        field[rowInArray][columnInArray] = symbol
    }
    
    func checkFilled() -> TicTackToeFieldSymbol? {
        return checkRowsFilled()
            ?? checkColumnFilled()
            ?? checkFirstDiagonalFilled()
            ?? checkSecondDiagonalFilled()
    }
    
    private func checkSecondDiagonalFilled() -> TicTackToeFieldSymbol? {
        let fieldSize = field.count
        let lastIndex = fieldSize - 1
        let firstSymbol = field[0][lastIndex]
        guard firstSymbol != .empty else { return nil }
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
    
    private func checkFirstDiagonalFilled() -> TicTackToeFieldSymbol? {
        let fieldSize = field.count
        let firstSymbol = field[0][0]
        
        guard firstSymbol != .empty else {
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
    
    private func checkColumnFilled() -> TicTackToeFieldSymbol? {
        let fieldSize = field.count
        
        for i in 0..<fieldSize {
            let firstSymbol = field[0][i]
            if firstSymbol == .empty {
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
    
    private func checkRowsFilled() -> TicTackToeFieldSymbol? {
        let fieldSize = field.count
        
        for i in 0..<fieldSize {
            let firstSymbol = field[i][0]
            if firstSymbol == .empty {
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
    
    var isAllTurnsDone: Bool {
        for row in field {
            for cell in row {
                if cell == .empty {
                    return false
                }
            }
        }
        return true
    }
    
}
