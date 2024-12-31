import Darwin
import Foundation

let persons: [Any] = [25, "Ivan", 32310, [545, "asads"]]

if let name = persons[1] as? String {
    print("Имя:" + " " + name)
}

// Картеж
let person = (
    age: 28,
    surname: "Иванов",
    name: "Ivan"
)

// Обращения к свойствам
let tuples = (1, "asdfadsf", 2)
print(tuples.1)

// Доступ по имени (lables)
let tuples2 = (age: 18, name: "Ivan", 2)
print(tuples2.age)

let tuples3: (name: String, age: Int) = ("Ivan", 18)

// Изменение
let tuples4 = (age: 18, name: "Ivan", 2)
//tuples4.age = 3 Нельзя менять если let !!!
var tuples5 = (age: 18, name: "Ivan", 2)
tuples5.age = 3

// Деструктуризация
let (age, name, some) = tuples4
let (a, b, _) = tuples4
