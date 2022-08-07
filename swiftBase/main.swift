let person = (name: "Иван", age: 28)
let (name, age) = person
print(name, age)

/*
 let name = "Иван"
 let age = 28
 let person = (name: name, age: age)
 print(person.name, person.age)
 */

/*
 var person = (name: "Иван", age: 28)
 print(person.name)
 person.name = "Николай"
 print(person.name)
 */

/*
let person: (String, Int) = (name: "Иван", age: 28)
let person2: (name: String, age: Int) = ("Иван", 28)
print(person.name)
print(person2.name)
*/
/*
 let person: (String, Int) = (name: "Иван", age: 28)
 let person2: (name: String, age: Int) = (name: "Иван", age: 28)
 let person3: (name: String, age: Int) = ("Иван", 28)
 */
/*
 let person = (100, 200, 300, 400, name: "Иван", 500)
 print(person.name)
 print(person.0, person.1, person.2, person.3, person.4, person.5)
 */


/*
 let person = (age: 18, height: 180, name: "Иван", surname: "Иванов")
 print(person.name, person.surname, person.age, person.height)
 print(person.0, person.1, person.2, person.3)
 */

/*
 let person = (name: "Иван", surname: "Иванов", age: 18, height: 180)
 print(person.name, person.surname, person.age, person.height)
 print(person.0, person.1, person.2, person.3)
 */
/*
 let a = (1, "привет", "пока", 18)
 print(a.0)
 print(a.1)
 print(a.2)
 print(a.3)
 print(a.4)
 */

/*
 let a: (String, Int) = (1, "привет")
 let b: (Int) = (1, "привет")
 let c: (Int, String, Int) = (1, "привет")
*/

/*
 let a: (Int, String) = (1, "привет")
 */

/*
 let a = (1, "привет")
 */

/*
 let person = (
     height: 180,
     age: 25,
     surname: "Иванов",
     name: "Иван",
     salary: [50001, 47002, 53003, 51004, 52005, 55006, 59007, 56008, 58009, 57010, 50011, 50012],
     children: ["Егор", "Екатерина", "Василиса"]
 )

 print("Полное имя: " + person.surname + " " + person.name)
 */

/*
 let person: [Any] = [
     180,
     25,
     "Иванов",
     "Иван",
     [50001, 47002, 53003, 51004, 52005, 55006, 59007, 56008, 58009, 57010, 50011, 50012],
     ["Егор", "Екатерина", "Василиса"]
 ]

 if let name = person[1] as? String, let surname = person[2] as? String {
     print("Полное имя: " + name + " " + surname)
 }
 */

/*
 let person: [Any] = [
     25,
     "Иванов",
     "Иван",
     [50001, 47002, 53003, 51004, 52005, 55006, 59007, 56008, 58009, 57010, 50011, 50012],
     ["Егор", "Екатерина", "Василиса"]
 ]

 if let name = person[1] as? String, let surname = person[2] as? String {
     print("Полное имя: " + name + " " + surname)
 }
 */

/*
 let person: Any = [
     25,
     "Иванов",
     "Иван"
     [50001, 47002, 53003, 51004, 52005, 55006, 59007, 56008, 58009, 57010, 50011, 50012],
     ["Егор", "Екатерина", "Василиса"]
 ]
 */
