//: Playground - noun: a place where people can play

import UIKit

//使用 let 来声明常量，使用 var 来声明变量
//声明的同时赋值的话，编译器 会自动推断类型
var myVariable = 42
myVariable = 50
let myConstant = 42

let implicitInteger = 70
let implicitDouble = 70.0
let explicitDouble: Double = 70

let myTestFloat: Float = 4



//值永远不会被隐式转换为其他类型。如果你需要把一个值转换成其他类型，请显式转换。
let label = "The width is "
let width = 94
let widthLabel = label + String(width)

//有一种更简单的把值转换成字符串的方法:把值写到括号中，并且在括号之前写一个反斜杠
let apples = 3
let oranges = 5
let appleSummary = "I have \(apples) apples."
let fruitSummary = "I have \(apples + oranges) pieces of fruit."

let myTestFloat2: Float = 17.1
print("The float number is \(myTestFloat2)")



//使用方括号 [] 来创建数组和字典，并使用下标或者键(key)来访问元素。最后一个元素后面允许有个逗号。
var shoppingList = ["catfish", "water", "tulips", "blue paint"]
shoppingList[1] = "bottle of water"
shoppingList

var occupations = [
    "Malcolm":"Captain",
    "Kaylee":"Mechanic",
]
occupations["Jayne"] = "Public Relations"
occupations
//必须固定同类型键和值
var occupations2 = [
    "num1":3,
    "num2":2
]
occupations2["num1"] = 13
occupations2["num3"] = 17
occupations2["num1"]
occupations2

//要创建一个空数组或者字典，使用初始化语法
let emptyArray = [String]()
let emptyDictionary = [String: Float]()

//如果类型信息可以被推断出来，你可以用 [] 和 [:] 来创建空数组和空字典
shoppingList = []
shoppingList
occupations = [:]
occupations


