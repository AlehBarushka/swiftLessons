import Foundation

// Поиск максимального значения в массиве
let a = makeArray()
var max = Int.min

for element in a {
    if element > max {
        max = element
    }
}

// Возведение каждого элемента массива в квадрат
var b = makeArray()

for element in 0..<b.count {
    b[element] *= b[element]
}

// Удаление чётных элементов массива
var c = makeArray()

for index in stride(from: c.count - 1, to: 0, by: -1) {
    if c[index] % 2 == 0 {
        c.remove(at: index)
    }
}

// Фильтрация массива с созданием нового c нечётными числами
let d = makeArray()
var newD = [Int]()

for element in d {
    if element % 2 != 0 {
        newD.append(element)
    }
}

// Сортировка массива по возрастанию (алгоритм сортировка выбором)
var e = makeArray()

for index in 0..<e.count {
    for j in (index + 1)..<e.count {
        if e[j] < e[index] {
            let tmp = e[index]
            e[index] = e[j]
            e[j] = tmp
        }
    }
}

// Обмен значениями между двумя массивами (чётные в одном, нечётные в другом)
var array1 = makeArray()
var array2 = makeArray()

for index in stride(from: array1.count - 1, through: 0, by: -1) {
    if array1[index] % 2 == 0 {
        array2.append(array1[index])
        array1.remove(at: index)
    }
}

for index in stride(from: array2.count - 1, through: 0, by: -1) {
    if array2[index] % 2 != 0 {
        array1.append(array2[index])
        array2.remove(at: index)
    }
}

print("asd")

func makeArray() -> [Int] {
    var a: [Int] = []

    for _ in 0..<10 {
        a.append(Int.random(in: 0...100))
    }

    return a
}
