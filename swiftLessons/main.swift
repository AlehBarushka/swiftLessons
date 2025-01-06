import Darwin
import Foundation

let heightArray = [202, 210, 198, 187, 165]

let heightTuple = (Ivan: 202, Alex: 210, Oleg: 198, Anton: 187, Max: 165)

let heighArrayTuples: [(name: String, heigth: Int)] = [
    (name: "Ivan", heigth: 202),
    (name: "Alex", heigth: 210),
    (name: "Oleg", heigth: 198),
    (name: "Anton", heigth: 187),
    (name: "Max", heigth: 165),
]

let heighDic: [String: Int] = [
    "Ivan": 202,
    "Alex": 210,
    "Oleg": 198,
    "Anton": 187,
    "Max": 165,
]

print(heighDic["Ivan"])

// Пустой словарь
let dicA: [String: Int] = [:]
let dicB = [String: Int]()
let dicC: [String: Int]?

// Оперции
var dicVar = ["a": 1, "b": 2]
dicVar = ["b": 1, "a": 2]
dicVar["c"] = 3
dicVar["a"] = nil
dicVar["b"] = 5

// Удаление всех
// dicVar.removeAll()

for item in dicVar {
    print(item.key, item.value)
}

//С деструктуризацией
for (a, b) in dicVar {
    print(a, b)
}
