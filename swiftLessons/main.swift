print(
    "Добро пожаловать в прорамму калькулятор. \nВыберете операцию: +, -, * или /"
)

let calcOperator = readLine()

print("Введите целое число:")
let operand1 = readLine() ?? ""

print("Введите целое второе число:")
let operand2 = readLine() ?? ""

var result: Int? = nil

if let operand1 = Int(operand1) {
    if let operand2 = Int(operand2) {
        switch calcOperator {
        case "+":
            result = operand1 + operand2
        case "-":
            result = operand1 - operand2
        case "*":
            result = operand1 * operand2
        case "/":
            result = operand1 / operand2
        default:
            print("Оператор не корректный!")
        }
    } else {
        print("Второе число не корректное!")
    }

} else {
    print("Первое число не корректное!")
}

print("Идёт вычесление примера...")

if let result {
    print("Результат: " + String(result))
}

