struct Email {
    let value: String
}

extension Email: ExpressibleByStringLiteral {
    
    init(stringLiteral: String) {
        self.init(value: stringLiteral)
    }
    
}


@main
struct Application {
    static func main() throws {
        send(toEmail: "uber_destroyer_2017@yandex.ru")
    }
}

func send(toEmail email: Email) {
    
}
/*
 struct Person {
     let name: String
     let surname: String
     let age: Int
     let children: [String]
 }

 extension Person: Hashable {
     static func == (lhs: Person, rhs: Person) -> Bool {
         return lhs.name == rhs.name && lhs.surname == rhs.surname
     }

     func hash(into hasher: inout Hasher) {
         hasher.combine(name)
         hasher.combine(surname)
     }
 }

 @main
 struct Application {
     static func main() throws {
         let persons = Set([
             Person(name: "Иван", surname: "Иванов", age: 27, children: ["Никита", "Глафира"]),
             Person(name: "Кузьма", surname: "Кузьмин", age: 55, children: ["Марья", "Семен"]),
             Person(name: "Сидор", surname: "Сидоров", age: 87, children: ["Прасковья", "Игнат"]),
         ])
         let person = Person(name: "Иван", surname: "Иванов", age: 0, children: []);
         print(persons.contains(person))
     }
 }
 */
/*
 Ф.И.О: Иванов Иван
 Возраст: 27 лет
 Дети:
     - Никита
     - Глафира

 ---------
 Ф.И.О: Иванов Иван
 Возраст: 27 лет
 Дети:
     - Никита
     - Глафира
 */

/*
 class Person {
     let name: String
     let surname: String
     let age: Int
     let children: [String]
     
     init(name: String, surname: String, age: Int, children: [String]) {
         self.name = name
         self.surname = surname
         self.age = age
         self.children = children
     }
 }

 extension Person: CustomStringConvertible {
     
     var description: String {
         var description =
         """
         Ф.И.О: \(surname) \(name)
         Возраст: \(age) лет
         Дети:
         """
         description += "\n"
         for child in children {
             description += "\t- \(child)\n"
         }
         return description
     }
     
 }

 @main
 struct Application {
     static func main() throws {
         let person = Person(name: "Иван", surname: "Иванов", age: 27, children: ["Никита", "Глафира"])
         let string = "\(person)"
         print(string)
         print("---------")
         print(person)
     }
 }

 */
