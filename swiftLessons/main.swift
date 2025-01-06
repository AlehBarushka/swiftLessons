import Darwin
import Foundation

let allPersons = ["Ivan", "Alex", "Oleg", "Anton", "Max"]
let personsInOfficeYesterday = ["Ivan", "Oleg", "Anton"]
let personsInOfficeToday = ["Ivan", "Alex", "Anton", "Max"]

for person in personsInOfficeToday {
    if person == "Ivan" {
        print("Ivan в офисе")

        break
    }
}

// Проблема массива в том, что могут быть повторения и приходиться перебирать весь массив для поиска

//Пример со словарём
let allPersonsDic = [
    "Ivan": "Ivan",
    "Alex": "Alex",
    "Oleg": "Oleg",
    "Anton": "Anton",
    "Max": "Max",
]

let personsInOfficeYesterdayDic = [
    "Ivan": "Ivan",
    "Oleg": "Oleg",
    "Anton": "Anton",
]

let personsInOfficeTodayDic = [
    "Ivan": "Ivan",
    "Alex": "Alex",
    "Anton": "Anton",
    "Max": "Max",
]

if personsInOfficeTodayDic["Ivan"] != nil {
    print("Ivan в офисе")
}

//Пример с мноржеством Set
let allPersonsSet: Set = ["Ivan", "Alex", "Oleg", "Anton", "Max"]
var personsInOfficeYesterdaySet: Set = ["Ivan", "Oleg", "Anton"]
var personsInOfficeTodaySet: Set = ["Ivan", "Alex", "Anton", "Max"]

let result = personsInOfficeTodaySet.contains("Ivan")
print(result)

let (inserted, memberAfter) = personsInOfficeTodaySet.insert("Olga")
print(inserted, memberAfter)
personsInOfficeTodaySet.insert("Olga")
personsInOfficeTodaySet.insert("Ivan")

let result2 = personsInOfficeTodaySet.contains("Ivan")
print(result2)
print(personsInOfficeTodaySet)

// Пересечение в обоих Set
let intersection = allPersonsSet.intersection(personsInOfficeTodaySet)
// Set вне пересечения
let subtracting = personsInOfficeTodaySet.subtracting(
    personsInOfficeYesterdaySet)
// Set уникальная разница
let symmetricDifference = personsInOfficeTodaySet.symmetricDifference(
    personsInOfficeYesterdaySet)
// Объединение
let union = personsInOfficeTodaySet.union(personsInOfficeYesterdaySet)

print(intersection)
print(subtracting)
print(union)
print(symmetricDifference)

// Синтаксис
let a = Set<String>(["Ivan", "Alex", "Oleg", "Anton", "Max"])
let a1 = Set(["Ivan", "Alex", "Oleg", "Anton", "Max"])
let a2: Set<String> = ["Ivan", "Alex", "Oleg", "Anton", "Max"]
let b = Set(["Ivan", "Ivan", "Ivan", "Ivan", "Max"])  // Удалит при создании дубли
print(b)

// Изменение
var c = Set(["Ivan", "Alex", "Oleg", "Anton", "Max"])
c = ["Ivan", "Alex", "Oleg"]
print(c)
c.insert("Olga")
print(c)
c.remove("Ivan")
print(c)

// Проверка наличия
print(c.contains("Olga"))

// Перебор
for element in c {
    print(element)
}

