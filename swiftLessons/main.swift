import Foundation

//// #1
//let DAYS_IN_ONE_WEEK = 7
//let DAYS = 234
//
//print("С момента 234 дней прошло:", DAYS / DAYS_IN_ONE_WEEK, "недель")
//
//// #2
//let METERS_PER_KILOMETER = 1000
//print("Введите расстояние в метрах:")
//
//let distanceInMeters = readLine() ?? ""
//
//if let distanceInMeters = Int(distanceInMeters) {
//    print("Итог:", Int(distanceInMeters) / METERS_PER_KILOMETER, "киллометров")
//} else {
//    print("Некорректное значиние!")
//}
//
//// #3
//let KILOGRAM_PER_TON = 1000
//print("Введите массу в киллограммах:")
//
//let weigthInKilo = readLine() ?? ""
//
//if let weigthInKilo = Int(weigthInKilo) {
//    print("Итог:", Int(weigthInKilo) / KILOGRAM_PER_TON, "тонн")
//} else {
//    print("Некорректное значиние!")
//}

// #4
func swapValues<T>(a: inout T, b: inout T) {
    let temp = a
    a = b
    b = temp
}

var a1 = 0
var b1 = 1

swapValues(a: &a1, b: &b1)

print(a1, b1)

// #5
func swapValues2<T>(a: inout T, b: inout T, c: inout T) {
    let tempB = b
    let tempA = a

    b = c
    a = tempB
    c = tempA
}

var a2 = 0
var b2 = 1
var c2 = 2

swapValues2(a: &a2, b: &b2, c: &c2)

print(a2, b2, c2)

// #6
print("Введите сторону 1:")
let lineA = readLine() ?? ""
print("Введите сторону 2:")
let lineB = readLine() ?? ""

if let lineA = Int(lineA), let lineB = Int(lineB) {
    print("Периметр прямоугольника равен - \((lineA + lineB) * 2)")
    let powLineA = Int(truncating: pow(Decimal(lineA), 2) as NSNumber)
    let powLineB = Int(truncating: pow(Decimal(lineB), 2) as NSNumber)

    let hypotenuse = sqrt(Double(powLineA) + Double(powLineB))

    print("Сторона диагонали равна - \(hypotenuse)")
} else {
    print("Введены неверные данные")
}
