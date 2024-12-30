import Darwin
import Foundation

print("Добро пожаловать в прорамму калькулятор!")

var history: [String] = []

while true {
    let calcOperator = getValueFromUser(
        desc:
            "Выберете операцию: +, -, * или /. Для завершения программы введите q. Для просмотра истории введите h."
    )

    if calcOperator == "q" { exit(0) }
    
    if calcOperator == "h" {
        print(history)
        continue
    }

    validateCalcOperator(calcOperator: calcOperator)

    let operand1 = Int(getValueFromUser(desc: "Введите целое число:"))
    validateOperand(operand: operand1)

    let operand2 = Int(getValueFromUser(desc: "Введите целое число:"))
    validateOperand(operand: operand2)

    let result: Int? = calculate(
        calcOperator: calcOperator,
        firstOperand: operand1!,
        secondOperand: operand2!)

    if let result {
        print("Идёт вычесление примера...")
        showResult(result)

        saveHistory(
            firstOperand: operand1!,
            secondOperand: operand2!,
            calcOperator: calcOperator,
            result: result
        )
    } else {
        print("Ошибка введённых данных!")
    }

    print("#")
    print(
        "------------------------------------------------------------------------"
    )
    print("#")
}

func getValueFromUser(desc: String) -> String {
    print(desc)

    return readLine() ?? ""
}

func showResult(_ res: Int) {
    print("Результат: " + String(res))
}

func calculate(calcOperator: String, firstOperand: Int, secondOperand: Int)
    -> Int?
{
    switch calcOperator {
    case "+":
        return firstOperand + secondOperand
    case "-":
        return firstOperand - secondOperand
    case "*":
        return firstOperand * secondOperand
    case "/":
        return firstOperand / secondOperand
    default:
        return nil
    }
}

func validateCalcOperator(calcOperator: String) {
    if calcOperator != "+",
        calcOperator != "-",
        calcOperator != "*",
        calcOperator != "/"
    {
        print("Некорректный оператор!")
        exit(0)
    }
}

func validateOperand(operand: Int?) {
    if operand == nil {
        print("Некорректное число!")
        exit(0)
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
