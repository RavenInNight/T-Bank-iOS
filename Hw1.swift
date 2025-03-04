/* let - константа
var - переменная
"\(var let)" - для использования в строке
let name: String = "Ivan" <- указание типа константы
Array - массив [], Dictionary - словарь [], Set - множество
nil - остутствие значения
*/

//Задача 1

let string1 = "apple Orange pineapple PEAR"
let string2 = "apple aPPle appLe Apple"

let string1_count = Set(string1.lowercased().split(separator: " "))
print(string1_count.count)

let string2_count = Set(string2.lowercased().split(separator: " "))
print(string2_count.count)
 
//Задача 2

let strings = ["(())", "))((", "()()()", "(()", "))))"]

for string in strings {
    if string.count % 2 == 0 {
        var balance = 0
        for char in string {
            if char == "(" {
                balance += 1
            } else if char == ")" {
                balance -= 1
            }
            if balance < 0 {
                print("Некорректная")
                break
            }
        }
        if balance == 0 {
            print("Корректная")
        }
    } else {
        print("Некорректная")
    }
}

// Задача 3
let array = ["a", "bb", "b", "cccc"]
var dict: [Int:[String]] = [:]

for item in array {
    let length = item.count
            
    // Добавляем строку в соответствующий массив в словаре
    if var letter = dict[length] {
        letter.append(item)
        dict[length] = letter
    } else {
        dict[length] = [item]
    }
}

print(dict)

//Задача 4

let dict1 : [String : Int?] = ["A": 4, "B": 4, "C": 4]
let dict2 : [String : Int?] = ["A": nil, "B": nil, "C": nil]
let dict3 : [String : Int?] = ["A": 5, "B": 5, "C": 5]
let dict4 : [String : Int?] = ["A": 3, "B": 5, "C": nil]

var CountGrades = 0
var CountStudents = 0

for (_, grade) in dict1 {
    if let NotNill = grade {
        CountGrades += grade!
        CountStudents += 1
    }
}

if CountStudents > 0 {
    print(CountGrades / CountStudents)
} else {
    print("Никто не сдал")
}

//Задача 5

enum MathOperations {
    case sum(Int, Int)
    case difference(Int, Int)
    case square(Int)
    case division(Int, Int)
    case multiply(Int, Int)
}

let array1: [MathOperations] = [.sum(1, 2), .square(2), .division(10, 2), .difference(5, 3), .multiply(9, 2)]

for operation in array1 {
    switch operation {
    case let .sum(a, b):
        let result = a + b
        print("Сумма - \(result)")
    case let .square(num):
        let result = num * num
        print("Квадрат - \(result)")
    case let .division(a, b):
        if b != 0 {
            let result = Double(a) / Double(b)
            print("Деление - \(result)")
        } else {
            print("Деление - Ошибка: деление на ноль")
        }
    case let .difference(a, b):
        let result = a - b
        print("Разность - \(result)")
    case let .multiply(a, b):
        let result = a * b
        print("Умножение - \(result)")
    }
}

