let a: String? = "привет"
a?.uppercased().first?.uppercased().first?.uppercased()
/*
let a: String? = "привет"
if let newString = a?.uppercased() {
    print(newString)
}
 */
/*
let a: String? = "привет"
if let character = a?.first {
    print(character)
}
 */
/*
 let a: String? = "привет"
 if let a = a, let character = a.first {
     print(character)
 }
 */
/*
 let a: String? = "привет"
 if let a = a {
     a.uppercased()
 }
 */
/*
let a = 1
let b = "привет"
a.isMultiple(of: 2) // false
b.uppercased() // ПРИВЕТ
 */

/*
let a = "привет"
let b = 1.0
print(a.count)
print(b.isZero)
 */
/* В консоле мы увидим
 6
 false
 Program ended with exit code: 0
 */
/*
Int.max     // 9223372036854775807
*/
/*
"привет".count  // 6
1.isZero        // false
 */
