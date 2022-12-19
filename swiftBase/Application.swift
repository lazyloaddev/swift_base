func some(closure: (Int, Int) -> Int) {
    let result = closure(2, 3)
    print(result)
}

@main
struct Application {
    static func main() throws {
some { $0 + $1 }
    }
}
/*
 func some(closure: (Int, Int) -> Int) {
     let result = closure(2, 3)
     print(result)
 }

 @main
 struct Application {
     static func main() throws {
         let a: (Int, Int) -> Int = { $0 + $1 }
         some(closure: a)
     }
 }
 */
/*
 class A {
     var closure: ((Int, Int) -> Int)?
     
     func some(closure: ((Int, Int) -> Int)?) {
         self.closure = closure
     }
 }
 class A {
     var closure: ((Int, Int) -> Int)?
     
     func some(closure: @escaping (Int, Int) -> Int) {
         self.closure = closure
     }
 }
 class A {
     var closure: ((Int, Int) -> Int)?
     
     func some(closure: (Int, Int) -> Int) {
         self.closure = closure
     }
 }
 */

/*
 class A {
     var closure: ((Int, Int) -> Int)?
     
     func some(closure: (Int, Int) -> Int) {
         closure(1, 2)
     }
 }

 @main
 struct Application {
     static func main() throws {
         let a = A()
         a.some(closure: {  $0 + $1 })
     }
 }
 */

/*
 class A {
     var closure: ((Int, Int) -> Int)?
     
     init(closure: ((Int, Int) -> Int)?) {
         self.closure = closure
     }
 }
 */

/*
 class A {
     var closure: (Int, Int) -> Int?
     
     init(closure: (Int, Int) -> Int?) {
         self.closure = closure
     }
 }
 */
/*
 class A {
     var closure: (Int, Int) -> Int
     
     init(closure: (Int, Int) -> Int) {
         self.closure = closure
     }
 }
 */
/*
 class A {
     
     var closure: (() -> Void)?
     
     deinit {
         print("Уничтожен из памяти")
     }
 }

 @main
 struct Application {
     static func main() throws {
         some()
     }
 }

 func some() {
     let a = A()
     a.closure = { [weak a] in print(a) }
 }
 */

/*
 class A {
     
     var closure: (() -> Void)?
     
     deinit {
         print("Уничтожен из памяти")
     }
 }

 @main
 struct Application {
     static func main() throws {
         some()
     }
 }

 func some() {
     let a = A()
     a.closure = { print(a) }
 }
 */
/*
 @main
 struct Application {
     static func main() throws {
         var c = 15
         let closure: (Int, Int) -> Int = { [c] a, b in
             a + b + c
         }
         c = 0
         some(closure: closure)
     }
 }

 func some(closure: (Int, Int) -> Int) {
     let a = 2
     let b = 3
     print(closure(a, b))
 }
 */
/*
 @main
 struct Application {
     static func main() throws {
         var c = 15
         let closure: (Int, Int) -> Int = {
             c = 100
             return $0 + $1 + c
         }
         c = 0
         some(closure: closure)
         print(c)
     }
 }

 func some(closure: (Int, Int) -> Int) {
     let a = 2
     let b = 3
     print(closure(a, b))
 }

 */
/*
 @main
 struct Application {
     static func main() throws {
         var c = 15
         let closure: (Int, Int) -> Int = {
             $0 + $1 + c
         }
         c = 0
         some(closure: closure)
     }
 }

 func some(closure: (Int, Int) -> Int) {
     let a = 2
     let b = 3
     print(closure(a, b))
 }
 */
/*
 @main
 struct Application {
     static func main() throws {
         let c = 15
         let closure: (Int, Int) -> Int = {
             $0 + $1 + c
         }
         some(closure: closure)
     }
 }

 func some(closure: (Int, Int) -> Int) {
     let a = 2
     let b = 3
     print(closure(a, b))
 }
 */

/*
 struct Summ {
     
     func perform(_ a: Int, _ b: Int) -> Int {
         a + b
     }
 }

 @main
 struct Application {
     static func main() throws {
         let closure = Summ()
         some(closure: closure)
     }
 }

 func some(closure: Summ) {
     let a = 2
     let b = 3
     print(closure.perform(a, b))
 }
 */
/*
 let closure = {
     $0 + $1
 }
 let closure: (Int, Int) -> Int = {
     return $0 + $1
 }
 let closure: (Int, Int) -> Int = { a, b in
     return a + b
 }
 let closure: (Int, Int) -> Int = { (a, b) in
     return a + b
 }
 let closure: (Int, Int) -> Int = { (a: Int, b: Int) in
     return a + b
 }
 let closure = { (a: Int, b: Int) -> Int in
     return a + b
 }
 */
/*
 let closure = { print("hello") }
 let closure: () -> Void = { print("hello") }
 let closure = { () -> Void in print("hello") }
 */
/*
 let closure: () -> Void = { () -> Void in print("hello") }
 */

/*
 let closure: (Int, Int) -> Int = { (a: Int, b: Int) -> Int in
     return a + b
 }
 */
/*
 let closure: (Int, Int) -> Int = { (a: Int, b: Int) -> Int in return a + b }
 let result = closure(1, 3)
 print(result)
 */
/*
 let closure: () -> Void = { print("hello") }
 */
/*
 let a = Closure()
 a.perform()
 */

/*
 func some(closure: Closure) {
     
 }

 @main
 struct Application {
     static func main() throws {
         let a = Closure()
         some(closure: a)
     }
 }
 */

/*
 let a = Closure()
 let b = a
 */
/*
 struct Closure {
     func perform() {
         print("hello")
     }
 }
 */
/*
 let a = { print("hello") }
 a()
 */
/*
 func some(closure: () -> Void) {
     
 }

 @main
 struct Application {
     static func main() throws {
         let a = { print("hello") }
         some(closure: a)
     }
 }
 */
/*
 let a = { print("hello") }
 let b = a
 */
/*
 { print("hello") }
 */

/*
 func some() {
     print("hello")
 }


 @main
 struct Application {
     static func main() throws {
         some()
     }
 }
 */

/*
 struct Person {
     let name: String
     let age: Int
 }


 @main
 struct Application {
     static func main() throws {
         let persons = [
             Person(name: "Иван", age: 27),
             Person(name: "Александр", age: 40),
             Person(name: "Евдоким", age: 78),
         ]
         let personsToOld = persons.sorted(by: { $0.age < $1.age })
         let personsToYong = persons.sorted(by: { $0.age > $1.age })
         let personsByName = persons.sorted(by: { $0.name < $1.name })
         
         print(personsToOld)
         print(personsToYong)
         print(personsByName)
     }
 }
 */

/*
 struct Person {
     let name: String
     let age: Int
 }


 func sort(persons: [Person], compare: (Person, Person) -> Bool) -> [Person] {
     var persons = persons
     for i in 0..<persons.count - 1 {
         for j in (i + 1)..<persons.count {
             if compare(persons[i], persons[j]) {
                 let tmp = persons[i]
                 persons[i] = persons[j]
                 persons[j] = tmp
             }
         }
     }
     return persons
 }

 @main
 struct Application {
     static func main() throws {
         let persons = [
             Person(name: "Иван", age: 27),
             Person(name: "Александр", age: 40),
             Person(name: "Евдоким", age: 78),
         ]
         let personsToOld = sort(persons: persons, compare: { $0.age > $1.age })
         let personsToYong = sort(persons: persons, compare: { $0.age < $1.age })
         let personsByName = sort(persons: persons, compare: { $0.name > $1.name })
         
         print(personsToOld)
         print(personsToYong)
         print(personsByName)
     }
 }

 */

/*
 struct Person {
     let name: String
     let age: Int
 }

 protocol CompareOperation {
     
     func compare(_ a: Person, _ b: Person) -> Bool
     
 }

 class ToOldCompareOperation: CompareOperation {
     func compare(_ a: Person, _ b: Person) -> Bool {
         a.age > b.age
     }
 }

 class ToYongCompareOperation: CompareOperation {
     func compare(_ a: Person, _ b: Person) -> Bool {
         a.age < b.age
     }
 }

 class ByNameCompareOperation: CompareOperation {
     func compare(_ a: Person, _ b: Person) -> Bool {
         a.name > b.name
     }
 }

 func sort(persons: [Person], operation: CompareOperation) -> [Person] {
     var persons = persons
     for i in 0..<persons.count - 1 {
         for j in (i + 1)..<persons.count {
             if operation.compare(persons[i], persons[j]) {
                 let tmp = persons[i]
                 persons[i] = persons[j]
                 persons[j] = tmp
             }
         }
     }
     return persons
 }

 @main
 struct Application {
     static func main() throws {
         let persons = [
             Person(name: "Иван", age: 27),
             Person(name: "Александр", age: 40),
             Person(name: "Евдоким", age: 78),
         ]
         let personsToOld = sort(persons: persons, operation: ToOldCompareOperation())
         let personsToYong = sort(persons: persons, operation: ToYongCompareOperation())
         let personsByName = sort(persons: persons, operation: ByNameCompareOperation())
         
         print(personsToOld)
         print(personsToYong)
         print(personsByName)
     }
 }
 */

/*
 struct Person {
     let name: String
     let age: Int
 }

 enum SortType {
     case ageToOld
     case ageToYong
 }

 func sort(persons: [Person], type: SortType) -> [Person] {
     var persons = persons
     for i in 0..<persons.count - 1 {
         for j in (i + 1)..<persons.count {
             let isNeedSwapToOld = type == .ageToOld && persons[i].age > persons[j].age
             let isNeedSwapToYong = type == .ageToYong && persons[i].age < persons[j].age
             if isNeedSwapToOld || isNeedSwapToYong {
                 let tmp = persons[i]
                 persons[i] = persons[j]
                 persons[j] = tmp
             }
         }
     }
     return persons
 }

 @main
 struct Application {
     static func main() throws {
         let persons = [
             Person(name: "Иван", age: 27),
             Person(name: "Александр", age: 40),
             Person(name: "Евдоким", age: 78),
         ]
         let personsToOld = sort(persons: persons, type: .ageToOld)
         let personsToYong = sort(persons: persons, type: .ageToYong)
         
         print(personsToOld)
         print(personsToYong)
     }
 }
 */
/*
 struct Person {
     let name: String
     let age: Int
 }
 
 @main
 struct Application {
     static func main() throws {
         var persons = [
             Person(name: "Иван", age: 27),
             Person(name: "Александр", age: 40),
             Person(name: "Евдоким", age: 78),
         ]
         
         for i in 0..<persons.count - 1 {
             for j in (i + 1)..<persons.count {
                 if persons[i].age > persons[j].age {
                     let tmp = persons[i]
                     persons[i] = persons[j]
                     persons[j] = tmp
                 }
             }
         }
         print(persons)
         
         var personsFromOldToYong = persons
         for i in 0..<personsFromOldToYong.count - 1 {
             for j in (i + 1)..<personsFromOldToYong.count {
                 if personsFromOldToYong[i].age < personsFromOldToYong[j].age {
                     let tmp = personsFromOldToYong[i]
                     personsFromOldToYong[i] = personsFromOldToYong[j]
                     personsFromOldToYong[j] = tmp
                 }
             }
         }
         print(personsFromOldToYong)
     }
 }

 */
