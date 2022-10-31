import Foundation

class CalculatorSubApplication: SubApplication {
    
    override var command: String { "c" }
    override var description: String { "запустить калькулятор" }
    
    private var history: [String] = []
    
    override func run() {
        print("Добро пожаловать в подпрограмму калькулятор.")
        
        while true {
            let action = getDataFromUser(description: "Что вы хотите сделать: c - расчет примера. h - просмотр истории. q - перейти к выбору подпрограммы")
            switch action {
            case "c":
                calculate()
            case "q":
                return
            case "h":
                showHistory()
            default:
                print("недопустимое действие")
            }
            print("")
            print("---------------------------------------------------------")
            print("")
        }
    }
    
    private func showHistory() {
        for example in history {
            print(example)
        }
    }

    private func calculate() {
        let operation = getDataFromUser(description: "Выберете операцию: +, -, * или /")
        guard operation == "+" || operation == "-" || operation == "*" || operation == "/" else {
            print("Вы ввели не верную операцию.")
            return
        }
        
        let firstNumber = getDataFromUser(description: "Введите целое число:")
        guard let firstNumber = Int(firstNumber) else {
            print("Вы ввели не верное число")
            return
        }
        
        let secondNumber = getDataFromUser(description: "Введите второе число:")
        guard let secondNumber = Int(secondNumber) else {
            print("Вы ввели не верное число")
            return
        }
        
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
