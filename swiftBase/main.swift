let nameFromuserInput = readLine()

if let nameFromuserInput = nameFromuserInput {
    print(nameFromuserInput)
} else {
    print("При извдечении имени пользователя обнаружилось nill")
}


/*
let a: Int = 1
let b: Int? = 1
let c: Int? = nil
 

print(a + (b ?? 0))
print(a + (c ?? 0))
 */

/*
let a: Int = 1
let b: Int! = 1
let c: Int! = nil

print(a + b)
print(a + c)
*/
/*
let a: Int = 1
let b: Int? = 1
let c: Int? = nil

print(a + b!)
print(a + c!)
*/
/*
let a: Int = 1
let b: Int? = 1
let c: Int? = nil

if
    let b = b,
    let c = c
{
    print(b + c)
} else {
    print("В b или c нет значения")
}
*/
/*
let a: Int = 1
let b: Int? = 1
let c: Int? = nil

if let b = b {
    // b не опциональная
    print(a + b)
} else {
    print("В b нет значения")
}
// b опциональная
*/

/*
let a: Int = 1
let b: Int? = 1
let c: Int? = nil

if let usualB = b {
    print(a + usualB)
} else {
    print("В b нет значения")
}

if let usualC = c {
    print(a + usualC)
} else {
    print("В c нет значения")
}
*/

/*
// 1
let a: Int? = 1
let b: Int? = 5
let c: Int = a

// 2

let result1 = a + a
let result2 = a + c

// 3

print(a)
*/

/*
// 1
let a: Int = 1
let b: Int? = 1

// 2
var c: Int? = 1
c = 2
c = nil
c = 5
c = 1

// 3

c = a
let d: Int? = a

// 4

print(a == b)
print(b == c)
*/

/*
let a: Int? = nil
let b: String? = nil
let c: Double? = nil
*/
