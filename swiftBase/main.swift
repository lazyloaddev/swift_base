let city = ["ленина": ["98г": [(kitchen: (fridge: (fruitBox: ["персик", "яблоко"], milk: "молоко"), tv: "телевизор"), bedroom: (bed: "кровать", armchair: "кресло"))], ]]

print(city["ленина"]?["98г"]?[0].kitchen.fridge.fruitBox[0])

/*
 let city = [
     "ленина": [
         "98г": [
             (
                 kitchen: (
                     fridge: (
                         fruitBox: [
                             "персик",
                             "яблоко"
                         ],
                         milk: "молоко"
                     ),
                     tv: "телевизор"
                 ),
                 bedroom: (
                     bed: "кровать",
                     armchair: "кресло"
                 )
             )
         ],
     ]
 ]

 let street = city["ленина"]
 let building = street?["98г"]
 let flat = building?[0]
 let bedroom = flat?.bedroom
 let armchair = bedroom?.armchair
 let bed = bedroom?.bed
 let kitchen = flat?.kitchen
 let tv = kitchen?.tv
 let fridge = kitchen?.fridge
 let milk = fridge?.milk
 let box = fridge?.fruitBox
 let pitch = box?[0]
 let apple = box?[1]

 print("-------------------")
 print(city)
 print("-------------------")
 print(street)
 print("-------------------")
 print(building)
 print("-------------------")
 print(flat)
 print("-------------------")
 print(kitchen)
 print("-------------------")
 print(fridge)
 print("-------------------")
 print(box)
 print("-------------------")
 print(pitch)
 */
/*
 let pitch = "персик"
 let apple = "яблоко"
 let box = [pitch, apple]
 let milk = "молоко"
 let fridge = (fruitBox: box, milk: milk)
 let tv = "телевизор"
 let kitchen = (fridge: fridge, tv: tv)
 let bed = "кровать"
 let armchair = "кресло"
 let bedroom = (bed: bed, armchair: armchair)
 let flat = (kitchen: kitchen, bedroom: bedroom)
 let building = [flat]
 let street = ["98г": building]
 let city = ["ленина": street]
 print("-------------------")
 print(city)
 print("-------------------")
 print(city["ленина"])
 print("-------------------")
 print(city["ленина"]?["98г"])
 print("-------------------")
 print(city["ленина"]?["98г"]?[0])
 print("-------------------")
 print(city["ленина"]?["98г"]?[0].kitchen)
 print("-------------------")
 print(city["ленина"]?["98г"]?[0].kitchen.fridge)
 print("-------------------")
 print(city["ленина"]?["98г"]?[0].kitchen.fridge.fruitBox)
 print("-------------------")
 print(city["ленина"]?["98г"]?[0].kitchen.fridge.fruitBox[0])
 */

/*
 let a = [
     [
         [1, 2, 3],
         [2, 4, 6],
         [3, 6, 9],
     ],
     [
         [4, 5, 6],
         [5, 25, 30],
         [6, 30, 36],
     ],
     [
         [7, 8, 9],
         [8, 64, 79],
         [9, 79, 91],
     ]
 ]
 let thridCollection = a[2]
 let secondRow = thridCollection[1]
 let sixtyfour = secondRow[1]
 print(a)
 print(thridCollection)
 print(secondRow)
 print(sixtyfour)
 */
/*
 let a = [
     [
         [1, 2, 3],
         [2, 4, 6],
         [3, 6, 9],
     ],
     [
         [4, 5, 6],
         [5, 25, 30],
         [6, 30, 36],
     ],
     [
         [7, 8, 9],
         [8, 64, 79],
         [9, 79, 91],
     ]
 ]
 let sixtyfour = a[2][1][1]
 print(sixtyfour)
 */

/*
let a = [[1, 2, 3], [2, 4, 6], [3, 6, 9],]
let lastRow = a[2]
let nine = lastRow[2]
print(a)
print(lastRow)
print(nine)
 */
/*
 let a = [[1, 2, 3], [2, 4, 6], [3, 6, 9],]
 let result = a[2][2]
 print(result)
 */
/*
 let a = [[1, 2, 3], [2, 4, 6], [3, 6, 9],]
 */
/*
 let a = [
     [1, 2, 3],
     [2, 4, 6],
     [3, 6, 9],
 ]
 */
/*
 let result = [1, 2, 3, 4, 5, 6]    [0]
 print(result)

 */
/*
 let a = [1, 2, 3, 4, 5, 6]
 let result = a[0]
 */

/*
 [1, 2, 3, 4, 5, 6]
 ["f", "dd", "21"]
 ["a": 1, "b": 2]
 */
/*
 let a = 4
 let b = "привет"
 let c = 4.5
 let d = true

 */

/*
4
"привет"
4.5
true
*/
