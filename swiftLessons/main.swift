var a: Int = 1
var b: Int? = 1
var c: Int? = nil

// let c = a + b Error

// Explicity unwrap
if let b {  // let b = b
    print(a + b)
} else {
    print("В b нет значения")
}

if let c {  // let c = c
    print(a + c)
} else {
    print("В c нет значения")
}

if let c, let b {
    print(c + b)
} else {
    print("нет значения")
}

// Force unwrap
print(a + b!)
//print(a + c!) Runtime Error


// Default value
if let c {
    print(c + a)
} else {
    print(0 + a)
}

print((c ?? 0) + a)
