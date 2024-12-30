import Foundation

let numbers: [Int] = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

for number in numbers {
    print(number)
}

for element in 0..<5 {
    print(element)
}

for _ in 0..<5 {
    print("привет")
}

// 1..<10
for element in stride(from: 0, to: 10, by: 2) {
    print(element)
}

// 1...10
for element in stride(from: 0, through: 10, by: 2) {
    print(element)
}

var a = 0
// сначала проверка условия потом тело
while a < 10 {
    print("Текщий индекс \(a)")
    a += 1
}

var b = 20
// сначала тело потом проверка условия
repeat {
    print("Текщий индекс \(b)")
    b += 1
} while b < 10

var c = 0

while c < 10 {
    print("Текщий индекс \(c)")
    c += 1
    // выход из цикла
    if c > 3 {
        break
    }
}

var d = 0

while d < 10 {
    d += 1
    //  исключение из цикла
    if d == 3 { continue }
    print("номер - \(d)")
}
