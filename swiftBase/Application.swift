@main
struct Application {
    static func main() throws {
        let person = Person(
            height: 180,
            age: 25,
            surname: "Иванов",
            name: "Иван",
            patronymic: "Иванович",
            salary: [50001, 47002, 53003, 51004, 52005, 55006, 59007, 56008, 58009, 57010, 50011, 50012],
            children: ["Егор", "Екатерина", "Василиса"]
        )
        person.add(salary: 50013)
        person.printToConsole()
    }
}

class Person {
    let height: Int
    let age: Int
    let surname: String
    let name: String
    let patronymic: String
    var salary: [Int]
    let children: [String]
    
    init(
        height: Int,
        age: Int,
        surname: String,
        name: String,
        patronymic: String,
        salary: [Int],
        children: [String]
    ) {
        self.height = height
        self.age = age
        self.surname = surname
        self.name = name
        self.patronymic = patronymic
        self.salary = salary
        self.children = children
    }
    
    func getFullName() -> String {
        return "\(self.name) \(self.surname) \(self.patronymic)"
    }

    func getFullSalary() -> Int {
        var fullSalary = 0
        for summ in self.salary {
            fullSalary += summ
        }
        return fullSalary
    }

    func getAverageSalary() -> Int {
        let fullSalary = getFullSalary()
        let averageSalary = fullSalary / self.salary.count
        return averageSalary
    }

    func add(salary: Int) {
        self.salary.append(50013)
    }

    func printToConsole() {
        let fullName = getFullName()
        let fullSalary = getFullSalary()
        let averageSalary = getAverageSalary()
        
        print("Имя сотрудника: \(fullName)")
        print("Полная сумма выплат: \(fullSalary)")
        print("Средняя зарплата: \(averageSalary)")
    }
    
}

/*
 @main
 struct Application {
     static func main() throws {
         let person = Person(
             height: 180,
             age: 25,
             surname: "Иванов",
             name: "Иван",
             patronymic: "Иванович",
             salary: [50001, 47002, 53003, 51004, 52005, 55006, 59007, 56008, 58009, 57010, 50011, 50012],
             children: ["Егор", "Екатерина", "Василиса"]
         )
         person.add(salary: 50013)
         person.printToConsole()
     }
 }

 class Person {
     let height: Int
     let age: Int
     let weight: Int
     let surname: String
     let name: String
     let patronymic: String
     var salary: [Int]
     let children: [String]
     
     init(
         height: Int,
         age: Int,
         weight: Int,
         surname: String,
         name: String,
         patronymic: String,
         salary: [Int],
         children: [String]
     ) {
         self.height = height
         self.age = age
         self.surname = surname
         self.name = name
         self.patronymic = patronymic
         self.salary = salary
         self.children = children
     }
     
     func getFullName() -> String {
         return "\(self.name) \(self.surname) \(self.patronymic)"
     }

     func getFullSalary() -> Int {
         var fullSalary = 0
         for summ in self.salary {
             fullSalary += summ
         }
         return fullSalary
     }

     func getAverageSalary() -> Int {
         let fullSalary = getFullSalary()
         let averageSalary = fullSalary / self.salary.count
         return averageSalary
     }

     func add(salary: Int) {
         self.salary.append(50013)
     }

     func printToConsole() {
         let fullName = getFullName()
         let fullSalary = getFullSalary()
         let averageSalary = getAverageSalary()
         
         print("Имя сотрудника: \(fullName)")
         print("Полная сумма выплат: \(fullSalary)")
         print("Средняя зарплата: \(averageSalary)")
     }
     
 }
 */

/*
 @main
 struct Application {
     static func main() throws {
         let person = Person(
             height: 180,
             age: 25,
             surname: "Иванов",
             name: "Иван",
             patronymic: "Иванович",
             salary: [50001, 47002, 53003, 51004, 52005, 55006, 59007, 56008, 58009, 57010, 50011, 50012],
             children: ["Егор", "Екатерина", "Василиса"]
         )
         person.add(salary: 50013)
         person.printToConsole()
     }
 }

 class Person {
     let height: Int
     let age: Int
     let surname: String
     let name: String
     let patronymic: String
     var salary: [Int]
     let children: [String]
     
     init(
         height: Int,
         age: Int,
         surname: String,
         name: String,
         patronymic: String,
         salary: [Int],
         children: [String]
     ) {
         self.height = height
         self.age = age
         self.surname = surname
         self.name = name
         self.patronymic = patronymic
         self.salary = salary
         self.children = children
     }
     
     func getFullName() -> String {
         return "\(self.name) \(self.surname) \(self.patronymic)"
     }

     func getFullSalary() -> Int {
         var fullSalary = 0
         for summ in self.salary {
             fullSalary += summ
         }
         return fullSalary
     }

     func getAverageSalary() -> Int {
         let fullSalary = getFullSalary()
         let averageSalary = fullSalary / self.salary.count
         return averageSalary
     }

     func add(salary: Int) {
         self.salary.append(50013)
     }

     func printToConsole() {
         let fullName = getFullName()
         let fullSalary = getFullSalary()
         let averageSalary = getAverageSalary()
         
         print("Имя сотрудника: \(fullName)")
         print("Полная сумма выплат: \(fullSalary)")
         print("Средняя зарплата: \(averageSalary)")
     }
     
 }
 */


/*
 @main
 struct Application {
     static func main() throws {
         var person = (
             height: 180,
             age: 25,
             surname: "Иванов",
             name: "Иван",
             patronymic: "Иванович",
             salary: [50001, 47002, 53003, 51004, 52005, 55006, 59007, 56008, 58009, 57010, 50011, 50012],
             children: ["Егор", "Екатерина", "Василиса"]
         )
         person = add(salary: 50013, toPerson: person)
         printToConsole(person: person)
     }
 }

 typealias Person = (
     height: Int,
     age: Int,
     surname: String,
     name: String,
     patronymic: String,
     salary: [Int],
     children: [String]
 )

 func getFullName(person: Person) -> String {
     return "\(person.name) \(person.surname) \(person.patronymic)"
 }

 func getFullSalary(person: Person) -> Int {
     var fullSalary = 0
     for summ in person.salary {
         fullSalary += summ
     }
     return fullSalary
 }

 func getAverageSalary(person: Person) -> Int {
     let fullSalary = getFullSalary(person: person)
     let averageSalary = fullSalary / person.salary.count
     return averageSalary
 }

 func add(salary: Int, toPerson person: Person) -> Person {
     var person = person
     person.salary.append(50013)
     return person
 }

 func printToConsole(person: Person) {
     let fullName = getFullName(person: person)
     let fullSalary = getFullSalary(person: person)
     let averageSalary = getAverageSalary(person: person)
     
     print("Имя сотрудника: \(fullName)")
     print("Полная сумма выплат: \(fullSalary)")
     print("Средняя зарплата: \(averageSalary)")
 }
 */

/*
 var car = (
     260,
     300,
     "Tesla",
     "Model 3",
     "Sedan",
     [270, 270, 260, 260],
     ["Elon", "Steve", "John"]
 )
 getFullName(person: car)
 */

/*
 var person: Person = (
     height: 180,
     weight: 70,
     age: 25,
     surname: "Иванов",
     name: "Иван",
     patronymic: "Иванович",
     salary: [50001, 47002, 53003, 51004, 52005, 55006, 59007, 56008, 58009, 57010, 50011, 50012],
     children: ["Егор", "Екатерина", "Василиса"]
 )
 person = add(salary: 50013, toPerson: person)
 printToConsole(person: person)
 */

/*
 var person = (
     height: 180,
     weight: 70,
     age: 25,
     surname: "Иванов",
     name: "Иван",
     patronymic: "Иванович",
     salary: [50001, 47002, 53003, 51004, 52005, 55006, 59007, 56008, 58009, 57010, 50011, 50012],
     children: ["Егор", "Екатерина", "Василиса"]
 )
 person = add(salary: 50013, toPerson: person)
 printToConsole(person: person)
 */

/*
 func getFullName(person: (height: Int, age: Int, surname: String, name: String, patronymic: String, salary: [Int], children: [String])) -> String {
     return "\(person.name) \(person.surname) \(person.patronymic)"
 }

 func getFullSalary(person: (height: Int, age: Int, surname: String, name: String, patronymic: String, salary: [Int], children: [String])) -> Int {
     var fullSalary = 0
     for summ in person.salary {
         fullSalary += summ
     }
     return fullSalary
 }
 */


/*
 var person = (
     height: 180,
     age: 25,
     surname: "Иванов",
     name: "Иван",
     patronymic: "Иванович",
     salary: [50001, 47002, 53003, 51004, 52005, 55006, 59007, 56008, 58009, 57010, 50011, 50012],
     children: ["Егор", "Екатерина", "Василиса"]
 )
 // 2
 let fullName = "\(person.name) \(person.surname) \(person.patronymic)"
 // 3
 var fullSalary = 0
 for summ in person.salary {
     fullSalary += summ
 }
 // 4
 let averageSalary = fullSalary / person.salary.count
 // 5
 person.salary.append(50013)
 // 6
 print("Имя сотрудника: \(fullName)")
 print("Полная сумма выплат: \(fullSalary)")
 print("Средняя зарплата: \(averageSalary)")
 */
