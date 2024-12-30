import Darwin
import Foundation

let a = 2

if a == 2 {
    print("If")
} else {
    print("else")
}

// Позволяет обрабатываеть негативные условия и выходить из scope
// Обязаны в блоке else покинуть scope
guard a == 2 else { exit(0) }

// Покинуть функцию
func division(_ a: Int, _ b: Int) -> Int? {
    guard b != 0 else { return nil }

    return a / b
}

let b = division(12, 6)

print(b)

// Покинуть цикл
for index in 0..<10 {
    print(index)
    guard index < 5 else { break }
}

// Искусственный пример на if
func divisionIf(_ a: Int?, _ b: Int?) -> Int? {
    if let a {
        if let b {
            if b != 0 {
                return a / b
            } else {
                print("На 0 делить нельзя!")
                return nil
            }
        } else {
            print("Второе число не может быть nil!")
            return nil
        }
    } else {
        print("Первое число не может быть nil!")
        return nil
    }
}

// Искусственный пример на guard
func divisionGuard(_ a: Int?, _ b: Int?) -> Int? {
    guard let a else {
        print("Первое число не может быть nil!")
        return nil
    }

    guard let b else {
        print("Второе число не может быть nil!")
        return nil
    }

    guard b == 0 else {
        print("На 0 делить нельзя!")
        return nil
    }

    return a / b
}
