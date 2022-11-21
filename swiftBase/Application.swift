protocol Areable {
    func getArea() -> Int
}

struct Some {
    let side: Int
}

extension Some: Areable {
    
    func getArea() -> Int {
        return side * side
    }
    
}

@main
struct Application {
    static func main() throws {
    }
}

/*
 protocol WithWeight {
     var weight: Int { get }
 }

 protocol WithCost {
     var cost: Int { get }
 }
 class Unit {
     func printInfo() {
         
     }
 }

 class Person: Unit, WithWeight, WithCost {
     let name: String
     let weight: Int
     let cost: Int
     
     init(name: String, weight: Int, cost: Int) {
         self.name = name
         self.weight = weight
         self.cost = cost
     }
     
     override func printInfo() {
         print("\(name) \(weight)")
     }
     
 }

 @main
 struct Application {
     static func main() throws {
     }
 }
 */

/*
 protocol Some: AnyObject {
     var a: Int { get set }
 }

  struct SomeOne: Some {
     var a: Int
     
     init(a: Int) {
         self.a = a
     }
 }
 */

/*
 protocol Some {
     var a: Int { get set }
 }

 class SomeOne: Some {
     var a: Int
     
     init(a: Int) {
         self.a = a
     }
 }

 @main
 struct Application {
     static func main() throws {
         let a = SomeOne(a: 3)
         a.a = 5
         
         let b: Some = SomeOne(a: 3)
         b.a = 5
         
     }
 }
 */

/*
 protocol Some {
     var a: Int { get }
     var b: Int { get set }
 }

 struct SomeOne: Some {
     var a: Int
     var b: Int
 }
 
 @main
 struct Application {
     static func main() throws {
         var a = SomeOne(a: 2, b: 3)
         a.a = 5
         
         var b: Some = SomeOne(a: 2, b: 3)
         b.a = 5
         
     }
 }
 */
/*
 protocol Some {
     var a: Int { get }
     var b: Int { get set }
 }
 */
/*
 protocol Some {
     func calculateArea()
     func sum(a: Int, b: Int) -> Int
 }

 struct SomeOne: Some {
     
     func calculateArea() {
         
     }
     
     func sum(a: Int, b: Int) -> Int {
         return a + b
     }
     
 }
 */

/*
 @startuml


 Unit ..> Person
 WithWeight ..> Person

 Unit ..> Table
 WithWeight ..> Table

 Unit ..> Software
 WithCost ..> Software


 interface Unit {
   printInfo()
 }

 interface WithWeight {
   weight: Int
 }

 interface WithCost {
   cost: Int
 }
 class Person {
   name: String
   weight: Int
 }

 class Table {
   model: String
   weight: Int
   cost: Int
 }

 class Software {
   name: String
   key: String
   cost: Int
 }

 @enduml
 
 protocol Unit {
     func printInfo()
 }

 protocol WithWeight {
     var weight: Int { get }
 }

 protocol WithCost {
     var cost: Int { get }
 }

 class Person: Unit, WithWeight {
     let name: String
     let weight: Int
     
     init(name: String, weight: Int) {
         self.name = name
         self.weight = weight
     }
     
     func printInfo() {
         print("\(name) \(weight)")
     }
     
 }

 class Table: Unit, WithWeight, WithCost {
     let model: String
     let cost: Int
     let weight: Int
     
     init(model: String, cost: Int, weight: Int) {
         self.model = model
         self.cost = cost
         self.weight = weight
     }
     
     func printInfo() {
         print("\(model) \(cost) \(weight)")
     }
     
 }

 class Software: Unit, WithCost {
     let name: String
     let key: String
     let cost: Int
     
     init(name: String, key: String, cost: Int) {
         self.name = name
         self.key = key
         self.cost = cost
     }
     
     func printInfo() {
         print("\(name) \(key) \(cost)")
     }
 }


 @main
 struct Application {
     static func main() throws {
         let list: [Unit] = [
             Person(name: "Иван", weight: 76),
             Table(model: "Бюрократ 3000", cost: 12333, weight: 34),
             Software(name: "Почтовый сервер", key: "dfdg768fdsg", cost: 123000)
         ]
         for item in list {
             item.printInfo()
         }
         
         let itemsWithCost: [WithCost] = [
             Table(model: "Бюрократ 3000", cost: 12333, weight: 34),
             Software(name: "Почтовый сервер", key: "dfdg768fdsg", cost: 123000)
         ]
         
         for item in itemsWithCost {
             print(item.cost)
         }
         
         let itemsWithWeight: [WithWeight] = [
             Table(model: "Бюрократ 3000", cost: 12333, weight: 34),
             Person(name: "Иван", weight: 76),
         ]
         
         for item in itemsWithWeight {
             print(item.weight)
         }
         
     }
 }
 */

/*
 @startuml
 Unit ..> WithCost
 WithWeight ..> Person
 WithCost ..> WithWeight
 WithCost ..> Table
 WithCost ..> Software

 Unit : printInfo()
 WithWeight : weight: Int
 Person : name: String
 WithCost : cost: Int

 Table : model: String

 Software : name: String
 Software : key: String

 @enduml
 
 class Unit {
     
     func printInfo() {
         print("")
     }
 }

 class WithWeight: WithCost {
     let weight: Int
     
     init(weight: Int, cost: Int) {
         self.weight = weight
         super.init(cost: cost)
     }
 }

 class Person: WithWeight {
     let name: String
     
     init(name: String, weight: Int) {
         self.name = name
         super.init(weight: weight, cost: 0)
     }
     
     override func printInfo() {
         print("\(name) \(weight)")
     }
     
 }

 class WithCost: Unit {
     let cost: Int
     
     init(cost: Int) {
         self.cost = cost
     }
 }

 class Table: WithWeight {
     let model: String
     
     init(model: String, cost: Int, weight: Int) {
         self.model = model
         super.init(weight: weight, cost: cost)
     }
     
     override func printInfo() {
         print("\(model) \(cost) \(weight)")
     }
     
 }

 class Software: WithCost {
     let name: String
     let key: String
     
     init(name: String, key: String, cost: Int) {
         self.name = name
         self.key = key
         super.init(cost: cost)
     }
     
     override func printInfo() {
         print("\(name) \(key) \(cost)")
     }
 }


 @main
 struct Application {
     static func main() throws {
         let list: [Unit] = [
             Person(name: "Иван", weight: 76),
             Table(model: "Бюрократ 3000", cost: 12333, weight: 34),
             Software(name: "Почтовый сервер", key: "dfdg768fdsg", cost: 123000)
         ]
         for item in list {
             item.printInfo()
         }
         
         let itemsWithCost: [WithCost] = [
             Table(model: "Бюрократ 3000", cost: 12333, weight: 34),
             Software(name: "Почтовый сервер", key: "dfdg768fdsg", cost: 123000)
         ]
         
         for item in itemsWithCost {
             print(item.cost)
         }
         
     }
 }
 */

/*
 @startuml
 Unit ..> WithWeight
 WithWeight ..> Person
 WithWeight ..> WithCost
 WithCost ..> Table
 WithCost ..> Software

 Unit : printInfo()
 WithWeight : weight: Int
 Person : name: String
 WithCost : cost: Int

 Table : model: String

 Software : name: String
 Software : key: String

 @enduml
 
 class Unit {
     
     func printInfo() {
         print("")
     }
 }

 class WithWeight: Unit {
     let weight: Int
     
     init(weight: Int) {
         self.weight = weight
     }
 }

 class Person: WithWeight {
     let name: String
     
     init(name: String, weight: Int) {
         self.name = name
         super.init(weight: weight)
     }
     
     override func printInfo() {
         print("\(name) \(weight)")
     }
     
 }

 class WithCost: WithWeight {
     let cost: Int
     
     init(cost: Int, weight: Int) {
         self.cost = cost
         super.init(weight: weight)
     }
 }

 class Table: WithCost {
     let model: String
     
     init(model: String, cost: Int, weight: Int) {
         self.model = model
         super.init(cost: cost, weight: weight)
     }
     
     override func printInfo() {
         print("\(model) \(cost) \(weight)")
     }
     
 }

 class Software: WithCost {
     let name: String
     let key: String
     
     init(name: String, key: String, cost: Int) {
         self.name = name
         self.key = key
         super.init(cost: cost, weight: 0)
     }
     
     override func printInfo() {
         print("\(name) \(key) \(cost)")
     }
 }

 */

/*
 class Unit {
     
     func printInfo() {
         print("")
     }
 }

 class Person: Unit {
     let name: String
     let weight: Int
     
     init(name: String, weight: Int) {
         self.name = name
         self.weight = weight
     }
     
     override func printInfo() {
         print("\(name) \(weight)")
     }
     
 }

 class WithCost: Unit {
     let cost: Int
     
     init(cost: Int) {
         self.cost = cost
     }
 }

 class Table: WithCost {
     let model: String
     let weight: Int
     
     init(model: String, cost: Int, weight: Int) {
         self.model = model
         self.weight = weight
         super.init(cost: cost)
     }
     
     override func printInfo() {
         print("\(model) \(cost) \(weight)")
     }
     
 }

 class Software: WithCost {
     let name: String
     let key: String
     
     init(name: String, key: String, cost: Int) {
         self.name = name
         self.key = key
         super.init(cost: cost)
     }
     
     override func printInfo() {
         print("\(name) \(key) \(cost)")
     }
 }


 @main
 struct Application {
     static func main() throws {
         let list: [Unit] = [
             Person(name: "Иван", weight: 76),
             Table(model: "Бюрократ 3000", cost: 12333, weight: 34),
             Software(name: "Почтовый сервер", key: "dfdg768fdsg", cost: 123000)
         ]
         for item in list {
             item.printInfo()
         }
         
         let itemsWithCost: [WithCost] = [
             Table(model: "Бюрократ 3000", cost: 12333, weight: 34),
             Software(name: "Почтовый сервер", key: "dfdg768fdsg", cost: 123000)
         ]
         
         for item in itemsWithCost {
             print(item.cost)
         }
         
     }
 }
 */

/*
 class Unit {
     
     func printInfo() {
         print("")
     }
 }

 class Person: Unit {
     let name: String
     let weight: Int
     
     init(name: String, weight: Int) {
         self.name = name
         self.weight = weight
     }
     
     override func printInfo() {
         print("\(name) \(weight)")
     }
     
 }

 class Table: Unit {
     let model: String
     let cost: Int
     let weight: Int
     
     init(model: String, cost: Int, weight: Int) {
         self.model = model
         self.cost = cost
         self.weight = weight
     }
     
     override func printInfo() {
         print("\(model) \(cost) \(weight)")
     }
     
 }

 class Software: Unit {
     let name: String
     let key: String
     let cost: Int
     
     init(name: String, key: String, cost: Int) {
         self.name = name
         self.key = key
         self.cost = cost
     }
     
     override func printInfo() {
         print("\(name) \(key) \(cost)")
     }
 }


 @main
 struct Application {
     static func main() throws {
         let list: [Unit] = [
             Person(name: "Иван", weight: 76),
             Table(model: "Бюрократ 3000", cost: 12333, weight: 34),
             Software(name: "Почтовый сервер", key: "dfdg768fdsg", cost: 123000)
         ]
         for item in list {
             item.printInfo()
         }
     }
 }
 */

/*
 struct Person {
     let name: String
     let weight: Int
 }

 struct Table {
     let model: String
     let cost: Int
     let weight: Int
 }

 struct Software {
     let name: String
     let key: String
     let const: Int
 }


 @main
 struct Application {
     static func main() throws {
         let list: [Any] = [
             Person(name: "Иван", weight: 76),
             Table(model: "Бюрократ 3000", cost: 12333, weight: 34),
             Software(name: "Почтовый сервер", key: "dfdg768fdsg", const: 123000)
         ]
     }
 }
 */
