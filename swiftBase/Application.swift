import Foundation

func someFunc() throws -> Int {
    throw SomeError(date: Date.now, file: #file, line: #line)
}

enum SomeEnumError: Error {
    case some
    case someWithData(String)
}

struct SomeError: Error {
    let date: Date
    let file: String
    let line: Int
}

@main
struct Application {
    static func main() throws {
        do {
            let value = try someFunc()
            print(value)
        } catch let error as SomeError {
            print("Ошибка \(error)")
        } catch SomeEnumError.some {
            print("Ошибка some")
        } catch SomeEnumError.someWithData(let string) {
            print("Ошибка \(string)")
        } catch {
            print("Ошибка \(error)")
        }
        
    }
}

func someFunc4() throws -> Int {
    let result = try someFunc3()
    return result + 4
}

func someFunc3() throws -> Int {
    let result = try someFunc2()
    return result + 3
}

func someFunc2() throws -> Int {
    let result = try someFunc()
    return result + 2
}

/*
 @main
 struct Application {
     static func main() throws {
         do {
             let value = try someFunc()
             print(value)
         } catch let error as SomeError {
             print("Ошибка \(error)")
         }
         
     }
 }
 */
/*
 struct SomeError: Error {
     let date: Date
     let file: String
     let line: Int
 }

 @main
 struct Application {
     static func main() throws {
         do {
             let value = try someFunc()
             print(value)
         } catch is SomeError {
             print("Ошибка")
         }
         
     }
 }

 */

/*
 enum SomeEnumError: Error {
     case some
     case someWithData(String)
 }

 @main
 struct Application {
     static func main() throws {
         do {
             let value = try someFunc()
             print(value)
         } catch SomeEnumError.someWithData(let string) {
             print("Ошибка \(string)")
         }
         
     }
 }
 */
/*
 do {
     let value = try someFunc()
     print(value)
 } catch SomeEnumError.some {
     print("Ошибка")
 }
 */
/*
 do {
     let value = try someFunc()
     print(value)
 } catch let error {
     print(error)
 }
 */

/*
 func someFunc() throws -> Int {
     throw SomeError(date: Date.now, file: #file, line: #line)
 }

 @main
 struct Application {
     static func main() throws {
         let value = try? someFunc()
         print(value ?? 0)
         
     }
 }
 */

/*
 import Foundation

 struct SomeError: Error {
     let date: Date
     let file: String
     let line: Int
 }

 func someFunc() throws -> Int {
     throw SomeError(date: Date.now, file: #file, line: #line)
 }

 @main
 struct Application {
     static func main() throws {
         do {
             let value = try someFunc()
             print(value)
         } catch let error as SomeError {
             print(error.date)
             print(error.file)
             print(error.line)
         }
         
     }
 }
 */
/*
 enum SomeError: Error {
     case first
 }

 @main
 struct Application {
     static func main() throws {
         do {
             let value = try someFunc4()
             print(value)
         } catch (let error) {
             print(error)
         }
         
     }
 }

 func someFunc4() throws -> Int {
     let result = try someFunc3()
     return result + 4
 }

 func someFunc3() throws -> Int {
     let result = try someFunc2()
     return result + 3
 }

 func someFunc2() throws -> Int {
     let result = try someFunc()
     return result + 2
 }

 func someFunc() throws -> Int {
     throw SomeError.first
 }
 */
/*
 enum SomeError: Error {
     case first
 }

 @main
 struct Application {
     static func main() throws {
         do {
             let value = try someFunc4()
             print(value)
         } catch (let error) {
             print(error)
         }
         
     }
 }

 func someFunc4() throws -> Int {
     let result = try someFunc3()
     return result + 4
 }

 func someFunc3() throws -> Int {
     let result = try someFunc2()
     return result + 3
 }

 func someFunc2() throws -> Int {
     let result = try someFunc()
     return result + 2
 }

 func someFunc() throws -> Int {
     return 1
 }
 */
/*
 @main
 struct Application {
     static func main() throws {
         do {
             let value = try someFunc4()
             print(value)
         } catch (let error) {
             print(error)
         }
         
     }
 }

 func someFunc4() throws -> Int {
     try someFunc3()
 }

 func someFunc3()  -> Int {
     do {
         return try someFunc2()
     } catch (let error) {
         print(error)
         return 0
     }
 }

 func someFunc2() throws -> Int {
     try someFunc()
 }

 func someFunc() throws -> Int {
     throw SomeError.first
 }
 */
/*
 enum SomeError: Error {
     case first
 }


 func someFunc() throws -> Int {
     throw SomeError.first
 }

 func someFunc2() throws -> Int {
     try someFunc()
 }

 func someFunc3() throws -> Int {
     try someFunc2()
 }

 func someFunc4() throws -> Int {
     try someFunc3()
 }


 @main
 struct Application {
     static func main() throws {
         do {
             let value = try someFunc4()
             print(value)
         } catch (let error) {
             print(error)
         }
         
     }
 }
 */
/*
 do {
     throw SomeError.first
 } catch (let error) {
     print(error)
 }
 */
/*
 enum SomeError: Error {
     case first
 }


 func someFunc() throws -> Int {
     throw SomeError.first
 }

 @main
 struct Application {
     static func main() throws {
         
         do {
             let value = try someFunc()
             print(value)
         } catch (let error) {
             print(error)
         }
         
     }
 }
 */

/*
 enum ParseError: Error {
     case ExpectedInt
 }

 enum CalcualtorError: Error {
     case EmptyUserInput
     case IncorrectTypeFromUserInput(ParseError)
     case IncorrectOperation
     case DivisionByZero
 }

 func getStringFromUser() throws -> String {
     let value = readLine()
     guard let string = value else {
         throw CalcualtorError.EmptyUserInput
     }
     return string
 }

 func getIntFormUser() throws -> Int {
     let string = try getStringFromUser()
     
     guard let int = Int(string) else {
         throw CalcualtorError.IncorrectTypeFromUserInput(.ExpectedInt)
     }
     
     return int
 }

 func getOperationFormUser() throws -> String {
     let string = try getStringFromUser()
     
     guard string == "/" else {
         throw CalcualtorError.IncorrectOperation
     }
     
     return string
 }

 func divide() throws -> Int {
     let a = try getIntFormUser()
     let b = try getIntFormUser()
     
     guard b != 0 else {
         throw CalcualtorError.DivisionByZero
     }
     
     return a / b
 }


 func calculate(operation: String) throws -> Int {
     switch operation {
     case "/":
         return try divide()
     default:
         throw CalcualtorError.IncorrectOperation
     }
 }

 @main
 struct Application {
     static func main() throws {
         do {
             let operation = try getOperationFormUser()
             let result = try calculate(operation: operation)
             print(result)
         } catch CalcualtorError.EmptyUserInput {
             print("Вы не ввели значение")
         } catch CalcualtorError.IncorrectTypeFromUserInput(let error) {
             switch error {
             case .ExpectedInt:
                 print("Вы ввели не число")
             }
         } catch CalcualtorError.IncorrectOperation {
             print("Вы ввели не верную операцию")
         } catch CalcualtorError.DivisionByZero {
             print("На ноль делить нельзя")
         }
         
     }
 }
 */

/*
 enum ParseError: Error {
     case ExpectedInt
 }

 enum CalcualtorError: Error {
     case EmptyUserInput
     case IncorrectTypeFromUserInput(ParseError)
     case IncorrectOperation
     case DivisionByZero
     
 }

 func getStringFromUser() throws -> String {
     let value = readLine()
     guard let string = value else {
         throw CalcualtorError.EmptyUserInput
     }
     return string
 }

 func getIntFormUser() throws -> Int {
     let string = try getStringFromUser()
     
     guard let int = Int(string) else {
         throw CalcualtorError.IncorrectTypeFromUserInput(.ExpectedInt)
     }
     
     return int
 }

 func getOperationFormUser() throws -> String {
     let string = try getStringFromUser()
     
     guard string == "/" else {
         throw CalcualtorError.IncorrectOperation
     }
     
     return string
 }

 func divide() throws -> Int {
     let a = try getIntFormUser()
     let b = try getIntFormUser()
     
     guard b != 0 else {
         throw CalcualtorError.DivisionByZero
     }
     
     return a / b
 }


 func calculate(operation: String) throws -> Int {
     switch operation {
     case "/":
         return try divide()
     default:
         throw CalcualtorError.IncorrectOperation
     }
 }

 @main
 struct Application {
     static func main() throws {
         do {
             let operation = try getOperationFormUser()
             let result = try calculate(operation: operation)
             print(result)
         } catch CalcualtorError.EmptyUserInput {
             print("Вы не ввели значение")
         } catch CalcualtorError.IncorrectTypeFromUserInput(let error) {
             switch error {
             case .ExpectedInt:
                 print("Вы ввели не число")
             }
         } catch CalcualtorError.IncorrectOperation {
             print("Вы ввели не верную операцию")
         } catch CalcualtorError.DivisionByZero {
             print("На ноль делить нельзя")
         }
         
     }
 }
 */

/*
 func getStringFromUser() -> String? {
     let value = readLine()
     guard let string = value else {
         print("Вы не ввели значение")
         return nil
     }
     return string
 }

 func getIntFormUser() -> Int? {
     let string = getStringFromUser()
     
     guard let string = string else {
         return nil
     }
     
     guard let int = Int(string) else {
         print("Вы ввели не число")
         return nil
     }
     
     return int
 }

 func getOperationFormUser() -> String? {
     let string = getStringFromUser()
     
     guard let string = string else {
         return nil
     }
     guard string == "/" else {
         print("Вы ввели не верную операцию")
         return nil
     }
     
     return string
 }

 func divide() -> Int? {
     let a = getIntFormUser()
     let b = getIntFormUser()
     
     guard let a = a else {
         print("Вы не ввели число")
         return nil
     }
     
     guard let b = b else {
         print("Вы не ввели число")
         return nil
     }
     
     guard b != 0 else {
         print("На ноль делить нельзя")
         return nil
     }
     
     return a / b
 }


 func calculate(operation: String) -> Int? {
     switch operation {
     case "/":
         guard let result = divide() else {
             print("Деление не удалось")
             return nil
         }
         return result
     default:
         print("Не верная операция")
         return nil
     }
 }

 @main
 struct Application {
     static func main() throws {
         let operation = getOperationFormUser()
         guard let operation = operation else {
             return
         }
         let result = calculate(operation: operation)
         guard let result = result else {
             return
         }
        
 */
