print("Введите целое число:")
let a = readLine() ?? ""

print("Введите второе число:")
let b = readLine() ?? ""

if let a = Double(a) {
    if let b = Double(b) {
        if a != 0 {
            let x = -b/a
            print(x)
        } else {
            print("Первое число не может равняться нулю")
        }
    } else {
        print("Вы ввели не верное второе число")
    }
} else {
    print("Вы ввели не верное первое число")
}

/*
 import Darwin
 print("Введите целое число:")
 let a = readLine() ?? ""

 print("Введите второе число:")
 let b = readLine() ?? ""

 if let a = Double(a) {
     if let b = Double(b) {
         let perimeter = 2 * (a + b)
         let diagonal = sqrt((a * a) + (b * b))
         print("периметр: " + String(perimeter))
         print("диагональ: " + String(diagonal))
     } else {
         print("Вы ввели не верное второе число")
     }
 } else {
     print("Вы ввели не верное первое число")
 }
 */


/*
 print("Введите целое число:")
 var a = readLine() ?? ""

 print("Введите второе число:")
 var b = readLine() ?? ""

 print("Введите третье число:")
 var c = readLine() ?? ""

 var tmp = b
 b = c
 c = a
 a = tmp
 */


/*
 let kilogramsPerTon = 1000
 print("Введите килограммы")
 let kilogram = readLine() ?? ""
 if let kilogram = Int(kilogram) {
     let result = kilogram / kilogramsPerTon
     print(result, "тонн")
 } else {
     print("Введено не верное значение")
 }
 */
/*
 let metersPerKilometer = 1000
 print("Введите метры")
 let meters = readLine() ?? ""
 if let meters = Int(meters) {
     let result = meters / metersPerKilometer
     print(result, "км")
 } else {
     print("Введено не верное значение")
 }
 */
/*
 let days = 234
 let daysPerWeek = 7
 let weeks = days / daysPerWeek
 print(weeks)
 */
/*
print("Добро пожаловать в программу калькулятор.")

print("Выберете операцию: +, -, * или /")
let operation = readLine() ?? ""

print("Введите целое число:")
let firstNumber = readLine() ?? ""

print("Введите второе число:")
let secondNumber = readLine() ?? ""

print("Выберете вторую операцию: +, -, * или /")
let secondOperation = readLine() ?? ""

print("Введите третье число:")
let thridNumber = readLine() ?? ""

print("Идет вычисление примера: " + firstNumber + " " + operation + " " + secondNumber + " " + secondOperation + " " + thridNumber)

if let firstNumber = Int(firstNumber) {
    if let secondNumber = Int(secondNumber) {
        if let thridNumber = Int(thridNumber) {
            var firstResult: Int?
            switch operation {
            case "+": firstResult = firstNumber + secondNumber
            case "-": firstResult = firstNumber - secondNumber
            case "*": firstResult = firstNumber * secondNumber
            case "/":
                if secondNumber != 0 {
                    firstResult = firstNumber / secondNumber
                } else {
                    print("Деление на 0 является недопустимой операцией")
                }
            default: print("Вы ввели не верную первую операцию.")
            }
            if let firstResult = firstResult {
                var result: Int?
                switch secondOperation {
                case "+": result = firstResult + thridNumber
                case "-": result = firstResult - thridNumber
                case "*": result = firstResult * thridNumber
                case "/":
                    if secondNumber != 0 {
                        result = firstResult / thridNumber
                    } else {
                        print("Деление на 0 является недопустимой операцией")
                    }
                default: print("Вы ввели не верную вторую операцию.")
                }
                if let result = result {
                    print("Результат: " + String(result))
                }
            }
        }
    } else {
        print("Вы ввели не верное второе число")
    }
} else {
    print("Вы ввели не верное первое число")
}
*/

/*
 print("Добро пожаловать в программу калькулятор.")

 print("Выберете операцию: +, -, * или /")
 let operation = readLine() ?? ""

 print("Введите целое число:")
 let firstNumber = readLine() ?? ""

 print("Введите второе число:")
 let secondNumber = readLine() ?? ""

 print("Введите третье число:")
 let thridNumber = readLine() ?? ""

 print("Идет вычисление примера: " + firstNumber + " " + operation + " " + secondNumber + " " + operation + " " + thridNumber)

 if let firstNumber = Int(firstNumber) {
     if let secondNumber = Int(secondNumber) {
         if let thridNumber = Int(thridNumber) {
             switch operation {
             case "+": print("Результат: " + String(firstNumber + secondNumber + thridNumber))
             case "-": print("Результат: " + String(firstNumber - secondNumber - thridNumber))
             case "*": print("Результат: " + String(firstNumber * secondNumber * thridNumber))
             case "/":
                 if secondNumber != 0 && thridNumber != 0 {
                     print("Результат: " + String(firstNumber / secondNumber / thridNumber))
                 } else {
                     print("Деление на 0 является недопустимой операцией")
                 }
             default: print("Вы ввели не верную операцию.")
             }
         }
     } else {
         print("Вы ввели не верное второе число")
     }
 } else {
     print("Вы ввели не верное первое число")
 }

 */
