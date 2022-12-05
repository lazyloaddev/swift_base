import Foundation

private protocol MathOperation {
    
    static var symbol: String { get }
    
    func calculate(firstNumber first: Int, secondNumber second: Int) -> Int?
    
}

private struct PlusOperation: MathOperation {
    static let symbol = "+"
    
    func calculate(firstNumber first: Int, secondNumber second: Int) -> Int? {
        first + second
    }
}

private struct MinusOperation: MathOperation {
    static let symbol = "-"
    
    func calculate(firstNumber first: Int, secondNumber second: Int) -> Int? {
        first - second
    }
}

private struct MultipleOperation: MathOperation {
    static let symbol = "*"
    
    func calculate(firstNumber first: Int, secondNumber second: Int) -> Int? {
        first * second
    }
}

private struct DivideOperation: MathOperation {
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
        let operation = UserDataProvider.string("Выберете операцию: +, -, * или /")
        guard operation == "+" || operation == "-" || operation == "*" || operation == "/" else {
            print("Вы ввели не верную операцию.")
            return
        }
        
        let firstNumber = UserDataProvider.int("Введите целое число:")
        let secondNumber = UserDataProvider.int("Введите второе число:")
        
        let example = String(firstNumber) + " " + operation + " " + String(secondNumber)
        print("Идет вычисление примера: " + example)
        
        let result = calculate(operation: operation, firstNumber: firstNumber, secondNumber: secondNumber)
        guard let result = result else { return }

        showResult(result)
        history.append(example + " = " + String(result))
    }


    private func calculate(operation: String, firstNumber first: Int, secondNumber second: Int) -> Int? {
        switch operation {
        case "+":
            return first + second
        case "-":
            return first - second
        case "*":
            return first * second
        case "/" where second == 0:
            print("Деление на 0 является недопустимой операцией")
            return nil
        case "/":
            return first / second
        default:
            print("Вы ввели не верную операцию.")
            return nil
        }
    }

    private func showResult(_ result: Int) {
        print("Результат: " + String(result))
    }
    
}
