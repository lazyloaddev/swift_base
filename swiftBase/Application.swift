@main
struct Application {
    static func main() throws {
        let array = Array<Int>(lenght: 10)
        let newArray = array.prefix { $0 % 2 != 0 }
        print(array)
        print(newArray)
    }
}

extension Array where Element == Int {
    
    init(lenght: Int) {
        self = Array(0..<lenght).map { _ in Int.random(in: 0...100) }
    }
    
}
/*
 let array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
 array
     .prefix { $0 <= 8 }
     .filter { $0 % 2 == 0 }
     .map { $0 * $0 }
     .forEach { print($0) }
 */
/*
 let array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
 array.forEach {
     if $0 > 8 {
         return
     }
     if $0 % 2 != 0 {
         return
     }
     let newElement = $0 * $0
     print(newElement)
 }
 */
/*
 let array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
         
 for element in array {
     if element > 8 {
         break
     }
     if element % 2 != 0 {
         continue
     }
     let newElement = element * element
     print(newElement)
 }
 */
/*
 let array = [1, 2, 3, 4, 5]
 let summ = array.reduce(0) { result, element in result + element }
 print(summ)
 */
/*
 let array = Array<Int>(lenght: 10)
 var summ = 0
 for element in array {
     summ += element
 }
 */
/*
 let array = Array<Int>(lenght: 10)
 array.forEach {
     if $0 > 5 {
         return
     }
     print($0)
 }
 */
/*
 let array = Array<Int>(lenght: 10)
 array.forEach { print($0) }
 */
/*
 let array = Array<Int>(lenght: 10)
 for element in array {
     print(element)
 }
 */
/*
 let array = Array<Int>(lenght: 10)
 let isAllEven = array.allSatisfy { $0 % 2 == 0 }
 print(array)
 print(isAllEven)
 */
/*
 let array = Array<Int>(lenght: 10)
 let hasEven = array.first { $0 % 2 == 0 } != nil
 print(array)
 print(hasEven)
 */
/*
 let array = Array<Int>(lenght: 10)
 let element = array.filter { $0 % 2 == 0 }.first
 print(array)
 print(element)
 */
/*
 let array = Array<Int>(lenght: 10)
 let index = array.firstIndex { $0 % 2 == 0 }
 print(array)
 print(index)
 */
/*
 let array = Array<Int>(lenght: 10)
 let element = array.first { $0 % 2 == 0 }
 print(array)
 print(element)
 */
/*
 let array = Array<Int>(lenght: 10)
 print(array)
 let newArray = array.sorted { $0 < $1 }
 print(newArray)
 */
/*
 var array = Array<Int>(lenght: 10)
 print(array)
 array.sort { $0 > $1 }
 print(array)
 */
/*
 var array = Array<Int>(lenght: 10)
 print(array)
 array.sort { $0 < $1 }
 print(array)
 */
/*
 let arrayA = Array<Int>(lenght: 10)
 let arrayB = Array<Int>(lenght: 10)
 print(arrayA)
 print(arrayB)
 
 let newA = (arrayA + arrayB).filter { $0 % 2 != 0 }
 let newB = (arrayA + arrayB).filter { $0 % 2 == 0 }
 print(newA)
 print(newB)
 */
/*
 let arrayA = Array<Int>(lenght: 10)
 let arrayB = Array<Int>(lenght: 10)
 print(arrayA)
 print(arrayB)

 let newA = arrayA.filter { $0 % 2 != 0 } + arrayB.filter { $0 % 2 != 0 }
 let newB = arrayA.filter { $0 % 2 == 0 } + arrayB.filter { $0 % 2 == 0 }
 print(newA)
 print(newB)
 */
/*
 var array = Array<Int>(lenght: 10)
 print(array)
 array = array.filter { $0 % 2 != 0 }
 print(array)
 */
/*
 let array = Array<Int>(lenght: 10)
 var minElement = array.min()
 print(array)
 print(minElement)
 */
/*
 let array = Array<Int>(lenght: 10)
 var maxElement = array.max()
 print(array)
 print(maxElement)
 */
/*
 let array = ["привет", "мир"]
 let newArray = array.flatMap { Array($0) }
 print(newArray)
 */
/*
 let array = ["привет", "мир"]
 let newArray = array.map { Array($0) }
 print(newArray)
 /* В консоле мы увидим
 [["п", "р", "и", "в", "е", "т"], ["м", "и", "р"]]
 */
 */
/*
 let array = ["1", "2", "q", "w", "3", "x"]
 let newArray = array.compactMap { Int($0) }
 print(newArray)
 */
/*
 let array = ["1", "2", "q", "w", "3", "x"]
 let newArray = array.map { Int($0) }
 print(newArray)
 */

/*
 extension Array where Element == Int {
     
     init(lenght: Int) {
         self = Array(0..<lenght).map { _ in Int.random(in: 0...100) }
     }
     
 }
 */
/*
 func makeArray() -> [Int] {
     Array(0..<10).map { _ in Int.random(in: 0...100) }
 }

 */

/*
 func makeArray() -> [Int] {
     var array = [Int]()
     for _ in 0..<10 {
         let randomNumber = Int.random(in: 0...100)
         array.append(randomNumber)
     }
     return array
 }

 */
/*
 let array = makeArray().map { String(describing: $0) }
 print(array)
 */
/*
 let array = makeArray().map { $0 * $0 }
 print(array)
 */
/*
 let array = makeArray()
 print(array)
 let newArray = array.map { $0 * $0 }
 print(newArray)
 */
