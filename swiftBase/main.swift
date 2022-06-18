/*
 4 + 3    // корректное выражение, равно 7
 4+4      // корректное выражение, равно 7
 4 +      // не корректное выражение, приведет к ошибке сборки
 + 3      // не корректное выражение, ошибка сборки
 4 +4     // не корректно
 4+ 4     // не корректно
 */
/*
 +4        // корректное выражение равно 4
 -4        // корректное выражение равно -4
 4 + -4    // корректное выражение равно 0
 + 4       // не корректное выражение
 - 4       // не корректное выражение
 */
/*
 4 +
 4
 + 3
 +
 5
 // все эти 5 строк корректное выражение которое равно 4 + 4 + 3 + 5 = 16
 */
/*
 2 + 2   // 4
 2 - 2   // 0
 2 * 2   // 4
 2 / 2   // 1
 2 % 2   // 0
 */
/*
 let weight = 10
 let height = 12
 let square = weight * height // (10 * 12) = 120
 */
/*
 var age = 25     // 25
 age = age + 1    // 26
 */
/*
 var age = 25      // 25
 age += 1          // 26
 age -= 10         // 16
 age *= 2          // 32
 age /= 4          // 8
 age %= 3          // 2
 */
/*
2.0 + 3.0
2 - 3.0
4.0 * 5
4 / 3.0
*/

/*
4 / 2
4 / 3
4 / 4
4 / 5
10 / 6
 */
/*
 4 > 2   // true
 4 < 2   // false
 4 >= 2  // true
 4 <= 2  // false
 4 > 4   // false
 4 >= 4  // true
 4 < 4   // false
 4 <= 4  // true
 4 == 4  // true
 4 != 4  // false
 4 == 2  // false
 4 != 2  // false
 */
/*
 "a" == "a"              // true
 "привет" == "привет"    // true
 "привет" == "Привет"    // false
 "a" != "a"              // false
 "привет" != "Привет"    // true
 "a" > "a"               // false
 "a" > "A"               // true
 "b" > "a"               // true
 "b" > "ab"              // true
 */
/*
 true && true    // true
 true && false   // false
 false && true   // false
 false && false  // false
 */
/*
 true || true    // true
 true || false   // true
 false || true   // true
 false || false  // false
 */
/*
 let result = 45 + 18 * 6 / 3 - 4
 */

/*
 let age = 28
 let name = "иван"
 let isGoodCandidat = age >= 25 && name == "петр" || name == "иван"
 print(isGoodCandidat)   // true
 */
/*
 let age = 28
 let name = "иван"
 let isAdult = age >= 25
 let hasRightName = name == "петр" || name == "иван"
 let isGoodCandidat = isAdult || hasRightName
 print(isGoodCandidat)   // true
 */
