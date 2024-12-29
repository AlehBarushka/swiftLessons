import Foundation

let c = 64
var c2 = 2

func sum(_ a: Int, _ b: Int) -> Int {
    c2 += 1
    return a + b + c
}

let sumResult = sum(1, 2)

print(sumResult)
print(c2)
