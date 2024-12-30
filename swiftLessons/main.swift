import Darwin
import Foundation

print("Добро пожаловать в прорамму калькулятор!")

var history: [String] = []

while true {
    let action = getValueFromUser(
        desc:
            "Что вы хотите сделать: c - расчёт примера, q - завершение работы, h - просмотр истории."
    )

    switch action {
    case "c":
        let result = calculate()

        guard let result else {
            continue
        }

        showResult(result)
    case "q":
        quit()
    case "h":
        showHistory()
    default:
        print("Недопустимое действие!")
    }

    print("")
    print("-------------------------------------------------------------------")
    print("")
}

func getValueFromUser(desc: String) -> String {
    print(desc)

    return readLine() ?? ""
}

func showResult(_ res: Int) {
    print("Результат: " + String(res))
}

func calculate() -> Int? {
    let calcOperator = getValueFromUser(
        desc: "Выберете операцию: +, -, * или /")

    guard
        calcOperator == "+"
            || calcOperator == "-"
            || calcOperator == "*"
            || calcOperator == "/"
    else {
        print("Некорректный оператор!")

        return nil
    }

    let operand1 = Int(getValueFromUser(desc: "Введите первое целое число:"))
    guard let operand1 else {
        print("Первое число некорректно!")

        return nil
    }

    let operand2 = Int(getValueFromUser(desc: "Введите второе целое число:"))
    guard let operand2 else {
        print("Второе число некорректно!")

        return nil
    }

    print("Идёт вычесление примера...")

    switch calcOperator {
    case "+":
        saveHistory(
            firstOperand: operand1,
            secondOperand: operand2,
            calcOperator: calcOperator,
            result: operand1 + operand2
        )

        return operand1 + operand2
    case "-":
        saveHistory(
            firstOperand: operand1,
            secondOperand: operand2,
            calcOperator: calcOperator,
            result: operand1 - operand2
        )

        return operand1 - operand2
    case "*":
        saveHistory(
            firstOperand: operand1,
            secondOperand: operand2,
            calcOperator: calcOperator,
            result: operand1 * operand2
        )

        return operand1 * operand2
    case "/" where operand2 == 0:
        print("На 0 делить нельзя!")

        return nil

    case "/":
        saveHistory(
            firstOperand: operand1,
            secondOperand: operand2,
            calcOperator: calcOperator,
            result: operand1 / operand2
        )

        return operand1 / operand2
    default:
        return nil
    }
}

func saveHistory(
    firstOperand: Int,
    secondOperand: Int,
    calcOperator: String,
    result: Int
) {
    history.append(
        "\(firstOperand) \(calcOperator) \(secondOperand) = \(result)")
}

func showHistory() {
    for item in history {
        print(item)
    }
}

func quit() { exit(0) }
