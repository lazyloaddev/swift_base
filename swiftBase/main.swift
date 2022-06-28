let a: Any = 1

let b = a is Int        // true
let c = a is Double     // false
let d = a is String     // false

/*
let a: Any = 1
let b: Int = 2

let c = a as! Int
let d = a as? Int
let e = b as Any
*/
/*
let a: Any = 1
let b: Any = 2

(a as! Int) + (b as! Int) // 3
 */
/*
let a: Any = 1
let b: Any = "привет"
var storage: Any = 1
storage = true
storage = "привет"
print(storage)
 */
/*
let a: Int = 1
let b: String = "привет"
*/
/*
let a = "true"
let b = "false"
let c = "YES"

let boolA = Bool(a) // Optional(true)
let boolB = Bool(b) // Optional(false)
let boolC = Bool(c) // nil
*/
/*
let a = 1
let b = 2.4
let c = "34"
let d = true
let e = Character("П")
let f: Float = 3.14

let stringC = Character(c)
*/
/*
let a = 1
let b = 2.4
let c = "34"
let d = true
let e = Character("П")
let f: Float = 3.14

let floatA = Float(a)   // 1.0
let floatB = Float(b)   // 2.4
let floatC = Float(c)   // Optional(34.0)
*/
/*
let a = 1
let b = 2.4
let c = "34"
let d = true
let e = Character("П")
let f: Float = 3.14

let stringA = String(a)   // "1"
let stringB = String(b)   // "2.3"
let stringD = String(d)   // "true"
let stringE = String(e)   // "П"
let stringF = String(f)   // "3.14"
*/

/*
let a = "34"
let b = "34.5"
let c = "Привет"

let doubleA = Double(a) // Optional(34.0)
let doubleB = Double(b) // Optional(34.5)
let doubleC = Double(c) // nil
print(doubleA, doubleB, doubleC)
 */
/*
let a = 1
let b = 2.4
let c = "34"
let d = true
let e = Character("П")
let f: Float = 3.14

let doubleA = Double(a)   // 1.0
let doubleC = Double(c)   // Optional(34.0)
let doubleF = Double(f)   // 3.140000104904175
*/
/*
let a = "34"
let b = "34.5"
let c = "Привет"

let intA = Int(a) // Optional(34)
let intB = Int(b) // nil
let intC = Int(c) // nil
*/
/*
let a = 1
let b = 2.4
let c = "34"
let d = true
let e = Character("П")
let f: Float = 3.14

let intB = Int(b)   // 2
let intC = Int(c)   // Optional(34)
let intF = Int(f)   // 3
*/
