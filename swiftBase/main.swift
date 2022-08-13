let a: Set = [1, 2, 3, 4, 5, 6, 7]
let b: Set = [4, 5, 6, 7, 8, 9, 10]

let intersectionResult = a.intersection(b)
print(intersectionResult)
let symmetricDifferenceResult = a.symmetricDifference(b)
print(symmetricDifferenceResult)
let unionResult = a.union(b)
print(unionResult)
let subtractingResult = a.subtracting(b)
print(subtractingResult)



/*
 var a: Set = ["Иван", "Петр", "Юлия", "Екатерина"]

 for element in a {
     print(element)
 }
 */

/*
 var a: Set = ["Иван", "Петр",]
 a.remove("Иван")
 print(a)
 */

/*
 var a: Set = ["Иван", "Петр"]
 let r1 = a.contains("Иван")
 let r2 = a.contains("Кузьма")
 print(r1, r2)
 */

/*
 var a: Set = ["Иван", "Петр"]
 a = ["Кузьма", "Екатерина"]
 */

/*
 var a: Set = ["Иван", "Иван", "Иван", "Иван", "Иван", "Петр", "Юлия", "Екатерина"]
 a.insert("Кузьма")
 a.insert("Кузьма")
 a.insert("Кузьма")
 a.insert("Кузьма")
 a.insert("Кузьма")
 print(a)

 */
/*
 let a: Set = ["Иван", "Петр", "Юлия", "Екатерина"]
 print(a)
 */

/*
 let a: Set = ["Иван", "Петр", "Юлия", "Екатерина"]
 let b: Set<String> = []
 let c: Set<String>?
 */

/*
 let a: Set = Set(["Иван", "Петр", "Юлия", "Екатерина"])
 */

/*
 // Все сотрудники hr отдела
 let hrUnit: Set = ["Иван", "Петр", "Юлия", "Екатерина"]
 // Сотрудники которые были в офисе в первый день (вчера)
 let inOffiseDayOne: Set = ["Иван", "Петр", "Юлия", "Степан"]
 // Сотрудники которые в офисе во второй день (сегодня)
 var inOffiseCurrentDay: Set = ["Иван", "Петр", "Екатерина", "Клавдия"]

 let isIvanInOffice = inOffiseCurrentDay.contains("Иван")
 print(isIvanInOffice)
 let isInvanWasRegistered = inOffiseCurrentDay.insert("Иван")
 let isKuzmaWasRegistered = inOffiseCurrentDay.insert("Кузьма")
 print(isInvanWasRegistered.inserted, isKuzmaWasRegistered.inserted)
 print(inOffiseCurrentDay)

 let hrInOffice = hrUnit.intersection(inOffiseCurrentDay)
 print(hrInOffice)

 let hrNotInOffise = hrUnit.subtracting(inOffiseCurrentDay)
 print(hrNotInOffise)

 let allPersonsWereInOffcie = inOffiseDayOne.union(inOffiseCurrentDay)
 print(allPersonsWereInOffcie)

 let personsWereInOfficeOnlyOneDay = inOffiseDayOne.symmetricDifference(inOffiseCurrentDay)
 print(personsWereInOfficeOnlyOneDay)
 */



/*
 // Все сотрудники hr отдела
 let hrUnit = [
     "Иван": "Иван",
     "Петр": "Петр",
     "Юлия": "Юлия",
     "Екатерина": "Екатерина"
 ]
 // Сотрудники которые были в офисе в первый день (вчера)
 let inOffiseDayOne = [
     "Иван": "Иван",
     "Петр": "Петр",
     "Юлия": "Юлия",
     "Степан": "Степан"
 ]
 // Сотрудники которые в офисе во второй день (сегодня)
 var inOffiseCurrentDay = [
     "Иван": "Иван",
     "Петр": "Петр",
     "Екатерина": "Екатерина",
     "Клавдия": "Клавдия"
 ]

 if inOffiseCurrentDay["Иван"] != nil {
     print("Иван в офисе")
 }

 if inOffiseCurrentDay["Кузьма"] == nil {
     inOffiseCurrentDay["Кузьма"] = "Кузьма"
 }

 var hrInOffice = [String: String]()
 for hr in hrUnit {
     if inOffiseDayOne[hr.key] != nil {
         hrInOffice[hr.key] = hr.value
     }
 }
 */



/*
 // Все сотрудники hr отдела
 let hrUnit = ["Иван", "Петр", "Юлия", "Екатерина"]
 // Сотрудники которые были в офисе в первый день (вчера)
 let inOffiseDayOne = ["Иван", "Петр", "Юлия", "Степан"]
 // Сотрудники которые в офисе во второй день (сегодня)
 var inOffiseCurrentDay = ["Иван", "Петр", "Екатерина", "Клавдия"]

 for person in inOffiseCurrentDay {
     if person == "Иван" {
         print("Иван в офисе")
         break
     }
 }

 var isKuzmaInOffice = false
 for person in inOffiseCurrentDay {
     if person == "Кузьма" {
         isKuzmaInOffice = true
         break
     }
 }

 if !isKuzmaInOffice {
     inOffiseCurrentDay.append("Кузьма")
 }


 */
