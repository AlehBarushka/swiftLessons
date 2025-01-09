import Foundation

// #1 Заполнить массив 100 элементов
func firstTask() {
    let array = makeArray(1, 100)

    print(array)
}

// #2 Заполнить массив случайными числами в диапозоне от 57 до 148
func secondTask() {
    let randomArray = makeRandomIntArrayWithRange(57..<147, 50)

    print(randomArray)
}

// #3 Заполнить массив случайным количеством случайных чисел, диапазон выберете сами
func thirdTask() {
    let randomArray = makeRandomIntArrayWithRange(1..<100)

    print(randomArray)
}

// #4 Получить от пользователя число и заполнить массив количеством случайных чисел равным полученному числу
func fourthTask() {
    let intNumber = getNumberFromUser()

    guard let intNumber else {
        exit(0)
    }

    let randomArray = makeRandomIntArrayWithRange(1..<50, intNumber)

    print(randomArray)
}

/* #5 Получить от пользователя два числа a и b.
Заполнить массив случайными числами, где длина массива равна a, а случайные числа создаются в диапазоне от 0 до b
*/
func fifthsTask() {
    let a = getNumberFromUser()
    let b = getNumberFromUser()

    guard let a, let b else {
        exit(0)
    }

    let randomArray = makeRandomIntArrayWithRange(0..<b, a)

    print(randomArray)
}

/* #6 Найти наименьший элемент в массиве */
func sixthTask() {
    let randomArray = makeRandomIntArrayWithRange(0..<100)
    var minValue = Int.max

    for value in randomArray {
        if minValue > value {
            minValue = value
        }
    }

    print(minValue)
}

/* #7 Найти такой элемент массива, что бы половина значений была больше него, а половина меньше.
Например, в массиве [61, 48, 83, 66, 76, 51, 67, 48, 47, 73] это 61 или 66.
Возможно два варианта, так как массив содержит четное количество элементов.
*/
func seventhTask() {
    let randomArray = makeRandomIntArrayWithRange(5..<20)
    let sortedArray = sortArray(randomArray)

    let halfIndex = sortedArray.count / 2

    if sortedArray.count % 2 == 0 {
        let numberA = sortedArray[halfIndex - 1]
        let numberB = sortedArray[halfIndex]

        print(
            "Элемент массива, у которого половина значений больше него, а половина меньше - \(numberA) и \(numberB)"
        )
    } else {
        let numberA = sortedArray[halfIndex]

        print(
            "Элемент массива, у которого половина значений больше него, а половина меньше - \(numberA)"
        )
    }
}

/* #8 Возвести все четные значения в массиве в квадрат
 */
func eigththTask() {
    var randomArray = makeRandomIntArrayWithRange(0..<20)

    for i in 0..<randomArray.count {
        if randomArray[i] % 2 == 0 {
            randomArray[i] *= randomArray[i]
        }
    }

    print(randomArray)
}

/* #9 Удалить четные числа из массива, используя цикл while, двигаясь от конца массива к началу
 */
func ninthTask() {
    let randomArray = makeRandomIntArrayWithRange(5..<20)

    let onlyEvenNumbersArray = removeEvenNumbers(randomArray)

    print(onlyEvenNumbersArray)
}

/* #10 Сформировать новый массив из тех элементов старого, которые меньше 50
 */
func tenthTask() {
    let randomArray = makeRandomIntArrayWithRange(30..<100)

    let onlyEvenNumbersArray = removeNumbers(randomArray, removeLess: 50)

    print(onlyEvenNumbersArray)
}

/* #11 Отсортировать массив по возрастанию
 */
func eleventhTask() {
    let randomArray = makeRandomIntArrayWithRange(30..<100)

    let sortedArray = sortArray(randomArray, byAscending: true)

    print(sortedArray)
}

/* #12 Отсортировать массив по убыванию, используя алгоритм сортировки пузырьком.
Алгоритм сортировки пузырьком можно найти в интернете.
Только не стоит искать решение на Swift и просто повторять его, лучше найти описание алгоритма, а код придумать самостоятельно
*/
func twelfthTask() {
    let randomArray = makeRandomIntArrayWithRange(1..<50)

    let sortedArray = bubbleSorting(randomArray)

    print(sortedArray)
}

func makeArray(_ element: Any, _ count: Int) -> [Any] {
    Array(repeating: element, count: count)
}

func removeEvenNumbers(_ array: [Int]) -> [Int] {
    var arrayCopy = array
    var index = arrayCopy.count - 1

    while index >= 0 {
        if arrayCopy[index] % 2 == 0 {
            arrayCopy.remove(at: index)
        }

        index -= 1
    }

    return arrayCopy
}

func removeNumbers(_ array: [Int], removeLess number: Int) -> [Int] {
    var arrayCopy = array
    var index = arrayCopy.count - 1

    while index >= 0 {
        if arrayCopy[index] < number {
            arrayCopy.remove(at: index)
        }

        index -= 1
    }

    return arrayCopy
}

func sortArray(_ array: [Int], byAscending: Bool = false) -> [Int] {
    var sortedArray = array

    if byAscending {
        for i in 0..<sortedArray.count {
            for j in (i + 1)..<sortedArray.count {
                if sortedArray[j] < sortedArray[i] {
                    let tmp = sortedArray[i]
                    sortedArray[i] = sortedArray[j]
                    sortedArray[j] = tmp
                }
            }
        }
    } else {
        for i in 0..<sortedArray.count {
            for j in (i + 1)..<sortedArray.count {
                if sortedArray[j] > sortedArray[i] {
                    let tmp = sortedArray[i]
                    sortedArray[i] = sortedArray[j]
                    sortedArray[j] = tmp
                }
            }
        }
    }

    return sortedArray
}

func bubbleSorting(_ array: [Int]) -> [Int] {
    var sortedArray = array

    for j in 1..<array.count {
        var isSorted = true

        for i in 0..<array.count - j {
            if sortedArray[i] < sortedArray[i + 1] {
                let tmp = sortedArray[i + 1]
                sortedArray[i + 1] = sortedArray[i]
                sortedArray[i] = tmp
                isSorted = false
            }
        }

        if isSorted { break }
    }

    return sortedArray
}

func makeRandomIntArrayWithRange(_ range: Range<Int>, _ count: Int) -> [Int] {
    var randomArray = [Int]()

    for _ in 1...count {
        let randomInt = Int.random(in: range)

        randomArray.append(randomInt)
    }

    return randomArray
}

func makeRandomIntArrayWithRange(_ range: Range<Int>) -> [Int] {
    var randomArray = [Int]()

    for _ in 0...Int.random(in: range) {
        let randomInt = Int.random(in: range)

        randomArray.append(randomInt)
    }

    return randomArray
}

func getNumberFromUser() -> Int? {
    print("Введите число:")
    let number = readLine() ?? ""

    return Int(number)
}
