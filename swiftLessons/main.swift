let a = 1
let b = 2.0
let c: Float = 1.56
let d = "12.5"
let e = Character("1")
let f = false

let intB = Int(b)  // 2
let intC = Int(c)  // 1
let intD = Int(d)  // nil or if string without "." let d = "12" -> Optional(12)
//let intE = Int(e) // Error
//let intF = Int(f) // Error

let doubleA = Double(a)  // 1.0
let doubleC = Double(c)  // 1.559999942779541
let doubleD = Double(d)  // Optional(12.5)
//let doubleE = Double(e) // Error
//let doubleF = Double(f) // Error

// Float work like Double

let stringA = String(a)  // "1"
let stringB = String(b)  // "2.0"
let stringC = String(c)  // "1.56"
let stringE = String(e)  // "1"
let stringF = String(f)  // "false"

//let characterA = Character(a)  // Error
//let characterB = Character(b)  // Error
//let characterC = Character(c)  // Error
//let characterD = Character(d)  // Runtime Error if string containing more then 1 character
//let characterF = Character(f)  // Error

let d1 = "false"
let d2 = "true"
// Boolean get only from String
let booleanD = Bool(d)  // nil
let booleanD1 = Bool(d1)  // Optional(false)
let booleanD2 = Bool(d2)  // Optional(true)

// Any
var storage: Any = 1
storage = true
storage = "string"

let int1: Any = 1
let int2: Any = 1

//int1 + int2 // Error Binary operator '+' cannot be applied to two 'Any' operands
let result = (int1 as! Int) + (int2 as! Int)

// Приведение типов
//as - из более частного в более общее
//as! - force cast
//as? - если сможет привеcти в тип то вернёт Optional() либо nil

// Проверка типов
let str1: Any = "a"
let int3: Any = 1

print(str1 is String)  // true
print(int3 is String)  // false
