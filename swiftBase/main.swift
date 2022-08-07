let a = [
    "Иван": 120,
    "Иван": 121,
    "Иван": 122,
    "Петр": 120,
    "Петр": 121,
    "Петр": 122,
]
print(a)
/*
 let a = [
     0: "привет",
     1: "пока",
     100: "hello",
     -100: "by",
 ]

 print(a)
 */

/*
 let a = [
     0: "привет",
     1: "пока",
 ]

 print(a[0])
 print(a[1])
 */
/*
 let playersHeight = [
     "Петр": 202,
     "Иван": 210,
     "Николай": 190,
     "Семен": 215,
     "Максим": 200,
 ]

 for player in playersHeight {
     print(player.key, player.value)
 }
 */
/*
 var a = ["a": 1, "b": 2]
 a.removeAll()
 */

/*
 var a = ["a": 1, "b": 2]
 a["a"] = 23
 a["b"] = nil
 a["x"] = 98
 print(a)
 */
/*
var a = ["a": 1, "b": 2]
a = ["c": 3, "d": 4]
a = [:]
 */
/*
 let playersHeight = [
     "Петр": 202,
     "Иван": 210,
     "Николай": 190,
     "Семен": 215,
     "Максим": 200,
 ]
 print(playersHeight["Кузьма"])
 print(playersHeight["Иван"])
 */
/*
 let playersHeight: [String: Int] = [
     "Петр": 202,
     "Иван": 210,
     "Николай": 190,
     "Семен": 215,
     "Максим": 200,
 ]
 print(playersHeight)
 */
/*
 let a: [String: String]?
 */
/*
 let a: [String: String] = [:]
 let b = [String: String]()
 */
/*
let playersHeight = ["Петр": 202, "Иван": 210]
 */
/*
 let playersHeight: [String: Int] = [
     "Петр": 202,
     "Иван": 210,
 ]
 */
/*
let playersHeight: [String: Int] = [
    "Петр": 202,
    "Иван": 210,
    "Николай": 190,
    "Семен": 215,
    "Максим": 200,
]
 */
/*
 let playersHeight: Dictionary<Any, Any> = [
     "Петр": 202,
     "Иван": "Привет",
 ]
 */

/*
 let playersHeight: Dictionary<String, Any> = [
     "Петр": 202,
     "Иван": "Привет",
 ]
 */

/*
 let playersHeight: Dictionary<String, Int> = [
     "Петр": 202,
     "Иван": 210,
     "Николай": 190,
     "Семен": 215,
     "Максим": 200,
 ]
 */

/*
 let playersHeight = [
     "Петр": 202,
     "Иван": 210,
     "Николай": 190,
     "Семен": 215,
     "Максим": 200,
 ]

 print(playersHeight["Петр"] ?? 0)
 */

/*
 let playersHeight: [(name: String, height: Int)] = [
     (name: "Петр", height: 202),
     (name: "Иван", height: 210),
     (name: "Николай", height: 190),
     (name: "Семен", height: 215),
     (name: "Максим", height: 200),
 ]

 for player in playersHeight {
     if player.name == "Иван" {
         print(player.height)
         break
     }
 }
 */
/*
 let playersHeight: [(name: String, height: Int)] = [
     (name: "Петр", height: 202),
     (name: "Иван", height: 210),
     (name: "Николай", height: 190),
     (name: "Семен", height: 215),
     (name: "Максим", height: 200),
 ]

 print(playersHeight[1].height)
 */

/*
 let playersHeight: [(name: String, height: Int)] = [
     (name: "Петр", height: 202),
     (name: "Иван", height: 210),
     (name: "Николай", height: 190),
     (name: "Семен", height: 215),
     (name: "Максим", height: 200),
 ]

 for player in playersHeight {
     print("Рост игрок " + player.name + " равен " + String(player.height))
 }
 */

/*
 let playersHeight = [202, 210, 190, 215, 200]
 */
