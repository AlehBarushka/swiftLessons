import Foundation

let age = 32
let name = "Антон"

if age < 30 {
    print("Ты молод!")
} else if age >= 16 && age <= 18 {
    print("Ты слишком молод")
} else {
    print("Уже старый")
}

switch age {
case ..<18: print("Молод")
case 18..<25: print("Норм")
case 25...: print("Старый")
default: print("Блок кода не выполниться")
}

switch name {
case "Олег": print("Нашёл")
default: print("Не нашёл")
}

let message = age < 20 ? "слишком молод" : "слишком стар"
print(message)
