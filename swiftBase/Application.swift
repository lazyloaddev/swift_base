class Passport {
    
    var number: String
    unowned var owner: Person?
    
    init(number: String, owner: Person) {
        self.number = number
        self.owner = owner
    }
    
    deinit {
        print("Объект Passport уничтожен")
    }
}

class Person {
    var age: Int
    var passport: Passport?
    
    init(age: Int) {
        self.age = age
    }
    
    deinit {
        print("Объект Person уничтожен")
    }
    
}

@main
struct Application {
    static func main() throws {
        arcTest()
        print("Конец программы")
    }
    
    static func arcTest() {
//        let person = Person(age: 13)
//        let passport = Passport(number: "00 11 223344")
//        person.passport = passport
//        passport.owner = person
    }
}

/*
 class Passport {
     
     var number: String
     var owner: Person?
     
     init(number: String) {
         self.number = number
     }
     
     deinit {
         print("Объект Passport уничтожен")
     }
 }

 class Person {
     var age: Int
     var passport: Passport?
     
     
     init(age: Int) {
         self.age = age
     }
     
     deinit {
         print("Объект Person уничтожен")
     }
     
 }

 @main
 struct Application {
     static func main() throws {
         arcTest()
         print("Конец программы")
     }
     
     static func arcTest() {
         let person = Person(age: 13)
         let passport = Passport(number: "00 11 223344")
         person.passport = passport
         passport.owner = pe
     }
 }
 */

/*
 class A {
     var age: Int
     
     init(age: Int = 0) {
         self.age = age
     }
     
     deinit {
         print("Объект уничтожен")
     }
 }

 @main
 struct Application {
     static func main() throws {
         arcTest()
         print("Конец программы")
     }
     
     static func arcTest() {
         // Первая константа, счетчик ссылок равен 1
         let a = A(age: 0)
         for i in 0...15 {
             // вторая константа будет появляться каждую итерацию, счетчик ссылок будет равен 2
             let localA = a
             summ(a: i, b: localA)
             // в конце итерации будет удаляться константа localA, счетчик ссылок будет уменьшаться до 1
         }
         // в конце функции arcTest удалиться константа a, счетчик ссылок будет уменьшен до 0, объект удалиться из памяти.
     }
 }

 // третья константа и будет появляться каждый вызов функуции, счетчик ссылок будет равен 3
 func summ(a: Int, b: A) {
     b.age += a
     // в конце функции будет удаляться константа b, счетчик ссылок будет уменьшаться до 2
 }
 */


/*
 // константа v объявлена в глобальной области видимости
 // будет создаваться при запуске программы
 // и удалиться только при завершении программы
 let v = 4

 @main
 struct Application {
     static func main() throws {
         // в начале каждой итерации будет создаваться новая константа i
         for i in 0...15 {
             // на каждой итерации будет создаваться новая константа result
             let result = summ(a: i, b: v)
             print(result)
             // в конце каждой итерации константы i и result будут удаляться
         }
     }
 }

 // при каждом вызове функции будут создаваться новые константы a и b
 func summ(a: Int, b: Int) -> Int {
     // при каждом вызове функции будет создаваться новая константа result
     let result = a + b
     return result
     // в конце каждого вызова константы a, b и result будут удаляться
 }

 */
