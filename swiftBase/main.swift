func division(_ a: Int?, _ b: Int?) -> Int? {
    guard let a = a else {
        print("первое число не может быть nil")
        return nil
    }
    
    guard let b = b else {
        print("второе число не может быть nil")
        return nil
    }
    
    guard b != 0 else {
        print("На 0 делить нельзя")
        return nil
    }
    
    return a / b
}
/*
 func division(_ a: Int?, _ b: Int?) -> Int? {
     if let a = a {
         if let b = b {
             if b != 0 {
                 return a / b
             } else {
                 print("На 0 делить нельзя")
                 return nil
             }
         } else {
             print("второе число не может быть nil")
             return nil
         }
     } else {
         print("первое число не может быть nil")
         return nil
     }
 }
 */

/*
import Darwin
func calcSumm(ofNumbers numbers: [Int]) -> Int {
    var summ = 0
    for number in numbers {
        guard number < 100 else { exit(0) }
        summ += number
    }
    return summ
}
 */
/*
 func calcSumm(ofNumbers numbers: [Int]) -> Int {
     var summ = 0
     for number in numbers {
         guard number < 100 else { return summ }
         summ += number
     }
     return summ
 }
 */
/*
 func calcSumm(ofNumbers numbers: [Int]) -> Int {
     var summ = 0
     for number in numbers {
         guard number < 100 else { break }
         summ += number
     }
     return summ
 }
 */

/*
 func calcSumm(ofNumbers numbers: [Int]) -> Int {
     var summ = 0
     for number in numbers {
         guard number < 100 else { continue }
         summ += number
     }
     return summ
 }
 */


/*
for index in 0..<10 {
    guard index < 5 else { break }
    print(index)
}
 */
/*
func division(_ a: Int, _ b: Int) -> Int? {
    guard b != 0 else { return nil }
    
    return a / b
}
*/
/*
import Darwin
let a = 2

guard a == 2 else {
    print("а не равно 2")
    exit(0)
}

print(a)
*/
