struct Person {
    let name: String
    let age: Int
}

extension Array {
    
    func sortExample(compare: (Element, Element) -> Bool) -> [Element] {
        var array = self
        for i in 0..<array.count - 1 {
            for j in (i + 1)..<array.count {
                if compare(array[i], array[j]) {
                    let tmp = array[i]
                    array[i] = array[j]
                    array[j] = tmp
                }
            }
        }
        return array
    }
    
}

@main
struct Application {
    static func main() throws {
        let persons = [
            Person(name: "Иван", age: 27),
            Person(name: "Александр", age: 40),
            Person(name: "Евдоким", age: 78),
        ]
        let sortedArray = persons.sortExample { $0.age > $1.age }
        print(sortedArray)
    }
}

/*
 extension Array {
     
     func sortExample(compare: (Element, Element) -> Bool) -> [Element] {
         var array = self
         for i in 0..<array.count - 1 {
             for j in (i + 1)..<array.count {
                 if compare(array[i], array[j]) {
                     let tmp = array[i]
                     array[i] = array[j]
                     array[j] = tmp
                 }
             }
         }
         return array
     }
     
 }
 */
/*
 let array = ["1", "6", "3", "7", "2", "0", "9"]
 let sortedArray = sort(persons: array, compare: { $0 > $1 })
 */
/*
 let array = [1, 6, 3, 7, 2, 0, 9]
 let sortedArray = sort(persons: array, compare: { $0 > $1 })
 */
/*
 let persons = [
     Person(name: "Иван", age: 27),
     Person(name: "Александр", age: 40),
     Person(name: "Евдоким", age: 78),
 ]
 let personsToOld = sort(persons: persons, compare: { $0.age > $1.age })
 */

/*
 func sort<T>(persons: [T], compare: (T, T) -> Bool) -> [T] {
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
 */
