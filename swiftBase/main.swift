var index = 0
while index < 10 {
    print("Текущий индекс " + String(index))
    index += 1
    if index == 5 {
        continue
    }
}

/*
 var numbers = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
 for number in numbers {
     if number == 5 {
         continue
     }
     print(number)
 }
 */

/*
var names = ["иван", "петр", "мария", "кузьма"]
var hasName = false
for name in names {
    if names == "петр" {
        hasName = true
        break
    }
}
 */

/*
 var names = ["иван", "петр", "мария", "кузьма"]
 var hasName = false
 for name in names {
     if names == "петр" {
         hasName = true
     }
 }
 */

/*
 var index = 0
 while index < 10 {
     break
     print("Текущий индекс " + String(index))
     index += 1
 }
 */
/*
var index = 0
while index < 10 {
    print("Текущий индекс " + String(index))
    index += 1
    if index > 3 {
        break
    }
}
*/
/*
var index = 20
repeat {
    print(index)
    index += 1
} while index < 10
*/

/*
 var summ = 0
 var step = 0
 while summ < 1000 {
     summ += Int.random(in: 0...100)
     step += 1
 }
 print(summ, step)
 */

/*
 var index = 0
 while index < 10 {
     print("Текущий индекс " + String(index))
 }
 */

/*
var index = 0
while index < 10 {
    print("Текущий индекс " + String(index))
    index += 1
}
*/
/*
for element in stride(from: 0, to: 10, by: 2) {
    print("привет " + String(element))
}
*/
/*
 for _ in 0..<5 {
     print("привет")
 }
 */
/*
for element in 0..<5 {
    print("привет " + String(element))
}
 */
/*
 for element in 1...5 {
     print("привет")
 }
 */
/*
 let fiveTimes = [1, 2, 3, 4, 5]
 for element in fiveTimes {
     print("привет")
 }
 */

/*
 let salary = [50001, 47002, 53003, 51004, 52005, 55006, 59007, 56008, 58009, 57010, 50011, 50012]
 var summ = 0
 for element in salary {
     summ += element
 }
 print(summ)
 */

/*
 let salary = [50001, 47002, 53003, 51004, 52005, 55006, 59007, 56008, 58009, 57010, 50011, 50012]
 for element in salary {
     print(element)
 }
 */

/*
let salary = [50001, 47002, 53003, 51004, 52005, 55006, 59007, 56008, 58009, 57010, 50011, 50012]
let summ = salary[0]
    + salary[1]
    + salary[2]
    + salary[3]
    + salary[4]
    + salary[5]
    + salary[6]
    + salary[7]
    + salary[8]
    + salary[9]
    + salary[10]
    + salary[11]
*/
/*
 print("Привет")
 print("Привет")
 print("Привет")
 print("Привет")
 print("Привет")
 */
