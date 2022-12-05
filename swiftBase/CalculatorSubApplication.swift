import Foundation

private protocol MathOperation {
    
    static var symbol: String { get }
    var symbol: String { get }
    
    func calculate(firstNumber first: Int, secondNumber second: Int) -> Int?
    
}

extension MathOperation {
    
    var symbol: String { Self.symbol }
    
}

private class PlusOperation: MathOperation {
    static let symbol = "+"
    
    func calculate(firstNumber first: Int, secondNumber second: Int) -> Int? {
        first + second
    }
}

private class MinusOperation: MathOperation {
    static let symbol = "-"
    
    func calculate(firstNumber first: Int, secondNumber second: Int) -> Int? {
        first - second
    }
}

private class MultipleOperation: MathOperation {
    static let symbol = "*"
    
    func calculate(firstNumber first: Int, secondNumber second: Int) -> Int? {
        first * second
    }
}

private class DivideOperation: MathOperation {
    static let symbol = "/"
    
    func calculate(firstNumber first: Int, secondNumber second: Int) -> Int? {
        guard second != 0 else {
            print("Деление на 0 является недопустимой операцией")
            return nil
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
        let action = UserDataProvider.string("Что вы хотите сделать: c - расчет примера. h - просмотр истории. q - перейти к выбору подпрограммы")
        switch action {
        case "c":
            calculate()
            return .resume
        case "q":
            return .exit
        case "h":
            showHistory()
            return .resume
        default:
            print("недопустимое действие")
            return .resume
        }
    }
    
    private func showHistory() {
        for example in history {
            print(example)
        }
    }

    private func calculate() {
        var selectionString = "Выберете операцию: "
        for symbol in operations.keys.sorted() {
            selectionString += "\(symbol), "
        }
        let operationSymbol = UserDataProvider.string(selectionString)
        guard let operation = operations[operationSymbol] else {
            print("Вы ввели не верную операцию.")
            return
        }
        
        let firstNumber = UserDataProvider.int("Введите целое число:")
        let secondNumber = UserDataProvider.int("Введите второе число:")
        
        let example = String(firstNumber) + " " + operation.symbol + " " + String(secondNumber)
        print("Идет вычисление примера: " + example)
        
        let result = operation.calculate(firstNumber: firstNumber, secondNumber: secondNumber)
        guard let result = result else { return }

        showResult(result)
        history.append(example + " = " + String(result))
    }

    private func showResult(_ result: Int) {
        print("Результат: " + String(result))
    }
    
}
