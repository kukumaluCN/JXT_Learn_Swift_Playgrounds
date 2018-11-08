//: Playground - noun: a place where people can play

import UIKit

print("Hello, world!")


/*
 简单值
 */
var myVaribale = 42
print(myVaribale)


let implicitDouble = 70.0
let explicitDobule: Double = 70
print(implicitDouble)
print(explicitDobule)


let label = "The width is "
let width = 94
let widthLabel = label + String(width)
print(widthLabel)


let apples = 3
let oranges = 5
let appleSummary = "I have \(apples) apples."
let fruitSummary = "I have \(apples + oranges) pieces of fruits."
print(appleSummary)
print(fruitSummary)


//多行内容
let quotation = """
I said "I have \(apples) apples."
And then I said "I have \(apples + oranges) pieces of fruits."
"""
print(quotation)


//数组和字典
var  shoppingList = ["water", "tulips", "catfish"]
print(shoppingList)
shoppingList[1] = "other"
print(shoppingList)


var occupations = [
    "Malcolm": "Captain",
    "Kaylee": "Mechanic",
]
print(occupations)
occupations["Jayne"] = "Public Relations"
print(occupations)


let emptyArray = [String]()
print(emptyArray)
let emptyDictionary = [String: Float]()
print(emptyDictionary)


//如果类型信息能被推断，那么你就可以用[]来表示空数组，用[:]来表示空字典。举个栗子，当你给变量设置新的值或者传参数给函数的时候。
shoppingList = []
print(shoppingList)
occupations = [:]
print(occupations)











/*
 控制流
 */
let individualScores = [75, 43, 103, 87, 12]
var teamScore = 0
for score in individualScores {
    if score > 50 {
        teamScore += 3
    }
    else {
        teamScore += 1
    }
}
print(teamScore)


//你可以一起使用 if和 let来操作那些可能会丢失的值。这些值使用可选项表示。可选的值包括了一个值或者一个 nil来表示值不存在。在一个值的类型后边使用问号（ ?）来把某个值标记为可选的。
var optionalString: String? = "Hello"
print(optionalString!)
print(optionalString == nil)

var optionalName: String? = "John Appleseed"
var greeting = "Hello!"
//optionalName = nil

if let name = optionalName {
    greeting = "Hello, \(name)"
} else {
    greeting = "Hello, Man"
}
print(greeting)


//另一种处理可选值的方法是使用 ?? 运算符提供默认值。如果可选值丢失，默认值就会使用。
let nickName: String? = nil
let fullName: String = "John Appleseed"
let informalGreeting = "Hi \(nickName ?? fullName)"
print(informalGreeting)


let vegetable = "red pepper"
switch vegetable {
    case "celery":
        print("Add some raisins and make ants on a log.")
    case "cucumber", "watercress":
        print("That would make a good tea sandwich.")
    case let x where x.hasSuffix("pepper"):
        print("Is it a spicy \(x)?")
        fallthrough
    default:
        print("Everything tastes good in soup.")
}


let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]
var largest = 0
var kindStr = ""
for (kind, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
            kindStr = kind
        }
    }
}
print(largest)
print(kindStr)


let mn = 100
//mn = 2
var n = 2
while n < mn {
    n = n * 2
}
print(n)

//这样可以保证循环至少运行了一次
var m = 2
repeat {
    m = m * 2
} while m < mn
print(m)


var total = 0
for i in 0..<4 {
    total += i
}
print(total)
total = 0
for i in 0...4 {
    total += i
}
print(total)











/*
 函数和闭包
 */

