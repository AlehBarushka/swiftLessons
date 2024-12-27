import Foundation

let a = 3 * 4 * 4

func mul(firstNumber a: Int, b: Int, _ c: Int) -> Int {
    return a * b * c
}

func mul2(firstNumber a: Int, b: Int, _ c: Int) {
    print(a * b * c)
}

print(a, mul(firstNumber: 3, b: 4, 4))
