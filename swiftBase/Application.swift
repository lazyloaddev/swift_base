enum WorkingMode {
    case office(String, String)
    case remote([Int])
    case mixed(String)
}

@main
struct Application {
    static func main() throws {
        let a = WorkingMode.office("8:00", "17:00")
        let b = WorkingMode.remote([1, 3, 5])
        let c = WorkingMode.mixed("Мира 56г-87")
        switch a {
        case .office(let startTime, let endTime):
            print(startTime, endTime)
        case .remote(let days):
            print(days)
        case .mixed(let address):
            print(address)
        }
    }
}
/*
 enum WorkingMode {
     case office(String, String)
     case remote([Int])
     case mixed(String)
 }

 @main
 struct Application {
     static func main() throws {
         let a = WorkingMode.office("8:00", "17:00")
         let b = WorkingMode.remote([1, 3, 5])
         let c = WorkingMode.mixed("Мира 56г-87")
     }
 }
 */
/*
 enum WorkingMode: String {
     case office
     case remote = "Привет"
     case mixed
 }
 */
/*
 enum WorkingMode: String {
     case office
     case remote
     case mixed
 }
 */
/*
 enum WorkingMode: Int {
     case office = 1
     case remote = 0
     case mixed
 }
 */

/*
 enum WorkingMode: Int {
     case office = 5
     case remote
     case mixed
 }

 @main
 struct Application {
     static func main() throws {
         print(WorkingMode.office.rawValue)
         print(WorkingMode.remote.rawValue)
         print(WorkingMode.mixed.rawValue)
     }
 }
 */

/*
 2
 1
 0
 */

/*
 enum WorkingMode {
     case office, remote, mixed
     
     init?(_ a: Int) {
         switch a {
         case 0:
             self = .office
         case 1:
             self = .remote
         case 2:
             self = .mixed
         default:
             return nil
         }
     }
     
     func asInt() -> Int {
         switch self {
         case .office:
             return 0
         case .remote:
             return 1
         case .mixed:
             return 2
         }
     }
 }

 @main
 struct Application {
     static func main() throws {
         let mode = WorkingMode(0)
         let num = mode?.asInt()
     }
 }
 */
/*
 enum WorkingMode {
     case office, remote, mixed
     
     init?(_ a: Int) {
         switch a {
         case 0:
             self = .office
         case 1:
             self = .remote
         case 2:
             self = .mixed
         default:
             return nil
         }
     }
 }

 @main
 struct Application {
     static func main() throws {
         let mode = WorkingMode(0)
     }
 }
 */

/*
 enum WorkingMode {
     let some = "some"
     case office, remote, mixed
 }
 */

/*
 enum WorkingMode {
     case office, remote, mixed
 }

 @main
 struct Application {
     static func main() throws {
         let a: WorkingMode = .remote
     }
 }
 */

/*
 enum WorkingMode {
     case office, remote, mixed
 }

 @main
 struct Application {
     static func main() throws {
         let a: WorkingMode = WorkingMode.remote
     }
 }

 */

/*
 enum WorkingMode {}

 @main
 struct Application {
     static func main() throws {
         let a = WorkingMode()
     }
 }
 */
/*
 enum WorkingMode {
     case office
     case remote
     case mixed
 }

 struct Person {
     let name: String
     let age: Int
     let workingMode: WorkingMode
 }

 @main
 struct Application {
     static func main() throws {
         let person = Person(name: "Иван", age: 45, workingMode: .remote)
         
         if person.workingMode == .office {
             print("Должен ходить в офис")
         } else if person.workingMode == .remote {
             print("Должен сидеть дома")
         } else if person.workingMode == .mixed {
             print("Может сидеть дома или ходить в офис")
         }
         
     }
 }
 */

/*
 struct Person {
     let name: String
     let age: Int
     let workingMode: Int
 }

 @main
 struct Application {
     static func main() throws {
         let person = Person(name: "Иван", age: 45, workingMode: 0)
         
         if person.workingMode == 0 {
             print("Должен ходить в офис")
         } else if person.workingMode == 1 {
             print("Должен сидеть дома")
         } else if person.workingMode == 2 {
             print("Может сидеть дома или ходить в офис")
         }
         
     }
 }
 */
/*
 struct Person {
     let name: String
     let age: Int
 }

 */
