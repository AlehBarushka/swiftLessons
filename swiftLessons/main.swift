import Foundation

let salarys: [Int] = [1, 2]
let names: [String] = ["Иван", "Олег"]
let any: [Any] = ["Иван", 1]

var a = [1, 2, 3, 4]
a = [2, 3, 4]  // В константу нельзя изменять значения внутри

print(a[0], a[2])
print(a.count)

a[1] = 7  // Изменение
print(a)

a.append(3)  // Добавление
a.insert(4, at: 0)  // Добавление по индексу
print(a)

a.remove(at: 0)  // Удаление по индексу
a.removeLast()  // Удаление последнего
print(a)
