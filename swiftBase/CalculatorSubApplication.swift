import Foundation

private enum CalculatorError: Error {
    case divisionByZero
    case incorrectOperation
    case incorrectAction
}

private protocol MathOperation {
    
    static var symbol: String { get }
    var symbol: String { get }
    
    func calculate(firstNumber first: Int, secondNumber second: Int) throws -> Int
    
}

extension MathOperation {
    
    var symbol: String { Self.symbol }
    
}

private class PlusOperation: MathOperation {
    static let symbol = "+"
    
    func calculate(firstNumber first: Int, secondNumber second: Int) throws -> Int {
        first + second
    }
}

private class MinusOperation: MathOperation {
    static let symbol = "-"
    
    func calculate(firstNumber first: Int, secondNumber second: Int) throws -> Int {
        first - second
    }
}

private class MultipleOperation: MathOperation {
    static let symbol = "*"
    
    func calculate(firstNumber first: Int, secondNumber second: Int) throws -> Int {
        first * second
    }
}

private class DivideOperation: MathOperation {
    static let symbol = "/"
    
    func calculate(firstNumber first: Int, secondNumber second: Int) throws -> Int {
        guard second != 0 else {
            throw CalculatorError.divisionByZero
        }
        return first / second
    }
}

class CalculatorSubApplication: SubApplication {
    
    private let operations: [String: MathOperation] = [
        PlusOperation.symbol: PlusOperation(),
        MinusOperation.symbol: MinusOperation(),
        MultipleOperation.symbol: MultipleOperation(),
        DivideOperation.symbol: DivideOperation(),
    ]
    
    private var history: [String] = []
    
    init() {
        super.init(
            command: "c",
            description: "запустить калькулятор",
            wellcomeMessage: "Добро пожаловать в подпрограмму калькулятор."
        )
    }
    
    override func runAction() -> SubApplicationActionResult {
        do {
            return try runCalculator()
        } catch CalculatorError.divisionByZero {
            print("Деление на 0 является недопустимой операцией")
        } catch CalculatorError.incorrectOperation {
            print("Неверная операция")
        } catch CalculatorError.incorrectAction {
            print("Неверное действие")
        } catch {
            print("Неизвестная ошибка, потоврите операцию еще раз")
        }
        return .resume
    }
    
    private func runCalculator() throws -> SubApplicationActionResult {
        let action = UserDataProvider.string("Что вы хотите сделать: c - расчет примера. h - просмотр истории. q - перейти к выбору подпрограммы")
        switch action {
        case "c":
            try calculate()
            return .resume
        case "q":
            return .exit
        case "h":
            showHistory()
            return .resume
        default:
            throw CalculatorError.incorrectAction
        }
    }
    
    private func showHistory() {
        for example in history {
            print(example)
        }
    }

    private func calculate() throws {
        var selectionString = "Выберете операцию: "
        for symbol in operations.keys.sorted() {
            selectionString += "\(symbol), "
        }
        let operationSymbol = UserDataProvider.string(selectionString)
        guard let operation = operations[operationSymbol] else {
            throw CalculatorError.incorrectOperation
        }
        
        let firstNumber = UserDataProvider.int("Введите целое число:")
        let secondNumber = UserDataProvider.int("Введите второе число:")
        
        let example = String(firstNumber) + " " + operation.symbol + " " + String(secondNumber)
        print("Идет вычисление примера: " + example)
        
        let result = try operation.calculate(firstNumber: firstNumber, secondNumber: secondNumber)

        showResult(result)
        history.append(example + " = " + String(result))
    }

    private func showResult(_ result: Int) {
        print("Результат: " + String(result))
    }
    
}
