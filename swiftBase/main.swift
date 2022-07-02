print("Добро пожаловать в программу калькулятор.")

print("Выберете операцию: +, -, * или /")
let operation = readLine() ?? ""

print("Введите целое число:")
let firstNumber = readLine() ?? ""

print("Введите второе число:")
let secondNumber = readLine() ?? ""

print("Идет вычисление примера: " + firstNumber + " " + operation + " " + secondNumber)

if let firstNumber = Int(firstNumber) {
    if let secondNumber = Int(secondNumber) {
        switch operation {
        case "+": print("Результат: " + String(firstNumber + secondNumber))
        case "-": print("Результат: " + String(firstNumber - secondNumber))
        case "*": print("Результат: " + String(firstNumber * secondNumber))
        case "/":
            if secondNumber != 0 {
                print("Результат: " + String(firstNumber / secondNumber))
            } else {
                print("Деление на 0 является недопустимой операцией")
            }
        default: print("Вы ввели не верную операцию.")
        }
    } else {
        print("Вы ввели не верное второе число")
    }
} else {
    print("Вы ввели не верное первое число")
}
