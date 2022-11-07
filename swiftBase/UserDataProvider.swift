import Foundation

class UserDataProvider {
    
    static func string(_ description: String) -> String {
        while true {
            print(description)
            let string = readLine()
            if let string = string {
                return string
            } else {
                continue
            }
        }
    }
    
    static func int(_ description: String) -> Int {
        while true {
            print(description)
            let string = readLine()
            if let string = string, let value = Int(string) {
                return value
            } else {
                print("Вы должны ввести целое число")
                continue
            }
        }
    }
    
    static func double(_ description: String) -> Double {
        while true {
            print(description)
            let string = readLine()
            if let string = string, let value = Double(string) {
                return value
            } else {
                print("Вы должны ввести число с плавающей точкой")
                continue
            }
        }
    }
    
}
