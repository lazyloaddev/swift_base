let arrayA = makeArray()
let arrayB = makeArray()
print(arrayA)
print(arrayB)
var newA = [Int]()
var newB = [Int]()
var index = 0
while index < arrayA.count && index < arrayB.count {
    if arrayA[index] % 2 != 0 {
        newA.append(arrayA[index])
    } else {
        newB.append(arrayA[index])
    }
    if arrayB[index] % 2 != 0 {
        newA.append(arrayB[index])
    } else {
        newB.append(arrayB[index])
    }
    index += 1
}


print("-------")
print(newA)
print(newB)

/*
 let arrayA = makeArray()
 let arrayB = makeArray()
 print(arrayA)
 print(arrayB)
 var newA = [Int]()
 var newB = [Int]()

 for number in arrayA {
     if number % 2 != 0 {
         newA.append(number)
     } else {
         newB.append(number)
     }
 }

 for number in arrayB {
     if number % 2 != 0 {
         newA.append(number)
     } else {
         newB.append(number)
     }
 }


 print("-------")
 print(newA)
 print(newB)
 */

/*
 var arrayA = makeArray()
 var arrayB = makeArray()
 print(arrayA)
 print(arrayB)
 for index in stride(from: arrayA.count - 1, through: 0, by: -1) {
     if arrayA[index] % 2 == 0 {
         arrayB.append(arrayA[index])
         arrayA.remove(at: index)
     }
 }

 for index in stride(from: arrayB.count - 1, through: 0, by: -1) {
     if arrayB[index] % 2 != 0 {
         arrayA.append(arrayB[index])
         arrayB.remove(at: index)
     }
 }
 print("-------")
 print(arrayA)
 print(arrayB)
 */

/*
 var array = makeArray()
 print(array)
 for i in 0..<array.count - 1 {
     for j in (i + 1)..<array.count {
         if array[i] > array[j] {
             let tmp = array[i]
             array[i] = array[j]
             array[j] = tmp
         }
     }
 }
 print(array)
 */
/*
 let array = makeArray()
 print(array)
 var newArray = [Int]()
 for number in array {
     if number % 2 != 0 {
         newArray.append(number)
     }
 }
 print(newArray)
 */

/*
 var array = makeArray()
 print(array)
 var index = 0
 while index < array.count {
     if array[index] % 2 == 0 {
         array.remove(at: index)
     } else {
         index += 1
     }
 }
 print(array)
 */
/*
 var array = makeArray()
 print(array)

 for index in stride(from: array.count - 1, through: 0, by: -1) {
     if array[index] % 2 == 0 {
         array.remove(at: index)
     }
 }
 print(array)
*/
 
/*
 var array = makeArray()
 print(array)
 for index in 0..<array.count {
     if array[index] % 2 == 0 {
         array.remove(at: index)
     }
 }
 print(array)
 */
/*
 var array = makeArray()
 print(array)
 for index in 0..<array.count {
     array[index] *= array[index]
 }
 print(array)
 */
/*
let array = makeArray()
var maxElement = Int.min
for number in array {
    if number > maxElement {
        maxElement = number
    }
}
print(array)
print(maxElement)
*/
func makeArray() -> [Int] {
    var array = [Int]()
    for _ in 0..<10 {
        let randomNumber = Int.random(in: 0...100)
        array.append(randomNumber)
    }
    return array
}

/*
 var array = [Int]()
 for _ in 0..<10 {
     let randomNumber = Int.random(in: 0...100)
     array.append(randomNumber)
 }
 print(array)

 */
