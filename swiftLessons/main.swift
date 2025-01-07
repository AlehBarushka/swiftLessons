import Darwin
import Foundation

let a = 45
let b = 34.56454564

let string = "a: " + String(a) + " b: " + String(b)

print(string)

let concatString = "a: \(a) b: \(b) summ: \(a + 78)"

print(concatString)

let doubleQuotationMarks = "Привет \"Мир\""  // Двойные кавычки
let multilineString = """
    Lorem Ipsum is simply dummy text of the printing and typesetting industry.
    Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,
    when an unknown printer took a galley of type and scrambled it to make a type specimen book.
    It has survived not only five centuries, but also the leap into electronic typesetting,
    remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages,
    and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
    """

print(multilineString)
