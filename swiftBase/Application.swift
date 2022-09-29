class Person {

    let surname: String
    let name: String
    let patronymic: String?
    
    init(surname: String, name: String, patronymic: String?) {
        self.surname = surname
        self.name = name
        self.patronymic = patronymic
    }
    
    func getFullName() -> String {
        return "\(name) \(surname) \(patronymic ?? "")"
    }
    
}


@main
struct Application {
    static func main() throws {
        let person1 = Person(surname: "Иванов", name: "Иван", patronymic: "Иванович")
        print(person1.getFullName())
        let person2 = Person(surname: "Кузьмин", name: "Кузьма", patronymic: "Кузьмич")
        print(person2.getFullName())
    }
}

/*
 class Person {

     let surname: String
     let name: String
     let patronymic: String?
     
     init(surname: String, name: String, patronymic: String?) {
         self.surname = surname
         self.name = name
         self.patronymic = patronymic
     }
     
     func getFullName() -> String {
         return "\(self.name) \(self.surname) \(self.patronymic ?? "")"
     }
     
 }
 */

/*
 class Person {

     let surname
     let name
     let patronymic: String?
     
     init() {
         
     }
     
 }
 */

/*
 class Person {

     let surname = ""
     let name = ""
     let patronymic: String?
     
     init() {
         
     }
     
 }
 */

/*
 class Person {

     var surname = ""
     var name = ""
     var patronymic: String?
     
     init() {
         
     }
     
 }
 */

/*
 class Person {

     var surname = ""
     var name = ""
     var patronymic = ""
     
 }


 @main
 struct Application {
     static func main() throws {
         let person1 = Person()
         person1.surname = "Иванов"
         person1.name = "Иван"
         person1.patronymic = "Иванович"
         print(person1.surname, person1.name, person1.patronymic!)
         let person2 = Person()
         person2.surname = "Кузьмин"
         person2.name = "Кузьма"
         person2.patronymic = "Кузьмич"
         print(person2.surname, person2.name, person2.patronymic!)
     }
 }
 */

/*
 class Person {

     var surname = "Иванов"
     var name = "Иван"
     var patronymic = "Иванович"
     
 }


 @main
 struct Application {
     static func main() throws {
         let person1 = Person()
         print(person1.surname, person1.name, person1.patronymic)
         let person2 = Person()
         person2.surname = "Кузьмин"
         person2.name = "Кузьма"
         person2.patronymic = "Кузьмич"
         print(person2.surname, person2.name, person2.patronymic)
     }
 }
 */

/*
 class Person {

     let surname = "Иванов"
     let name = "Иван"
     let patronymic = "Иванович"
     
 }


 @main
 struct Application {
     static func main() throws {
         let person1 = Person()
         print(person1.surname, person1.name, person1.patronymic)
         let person2 = Person()
         print(person2.surname, person2.name, person2.patronymic)
     }
 }
 */
/*
 class Person {

     let surname = "Иванов"
     let name = "Иван"
     let patronymic = "Иванович"
     
 }


 @main
 struct Application {
     static func main() throws {
         let person = Person()
         print(person.surname, person.name, person.patronymic)
     }
 }
 */

/*
 class Person {}


 @main
 struct Application {
     static func main() throws {
         let person: Person = Person()
         print(person)
     }
 }
 */
/*
 class Person {}

 @main
 struct Application {
     static func main() throws {
         print(Person())
     }
 }
 */
/*
 class Person {} // Класс


 @main
 struct Application {
     static func main() throws {
         Person()        // Создаем экземпляр данного класса
     }
 }
 */
/*
 class Person {}     // Хорошее имя
 class B {}          // Плохое имя
 class 1Person {}    // Некоректное имя, приложение не скомпилиируется
 class person {}     // Плохое имя, выглдяит как переменная, а не тип
 class Myperson {}   // Плохое имя, слова сливаются
 class My_person {}  // Плохое имя, в iOS разрабоке обычно не используют нижнее подчеркивание для разделения слов
 class MyPerson {}   // Хорошее имя
 */
/*
 class Person {
 }
 */
