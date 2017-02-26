//: Playground - noun: a place where people can play

import UIKit


//在 if 语句中，条件必须是一个布尔表达式——这意味着像 if score { ... } 这样的代码将报错，而不会隐形地 与 0 做对比。
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



//你可以一起使用 if 和 let 来处理值缺失的情况。这些值可由可选值来代表。一个可选的值是一个具体的值或者 是 nil 以表示值缺失。在类型后面加一个问号来标记这个变量的值是可选的。
//如果变量的可选值是 nil，条件会判断为 false，大括号中的代码会被跳过。如果不是 nil，会将值解包并赋给 let 后面的常量，这样代码块中就可以使用这个值了。
var optionalString: String? = "Hello"
print(optionalString == nil)

var optionalName: String? = nil//"John Appleseed"
var greeting = "Hello!"
if let name = optionalName {
    greeting = "Hello, \(name)"
}
else {
    greeting = "Hello, nil"
}



//另一种处理可选值的方法是通过使用 ?? 操作符来提供一个默认值。如果可选值缺失的话，可以使用默认值来代 替。
let nickName: String? = nil
let fullName: String? = "John Appleseed"
let informalGreeting = "Hi \(nickName ?? fullName)"
print(informalGreeting)




//switch 支持任意类型的数据以及各种比较操作——不仅仅是整数以及测试相等。
//运行 switch 中匹配到的子句之后，程序会退出 switch 语句，并不会继续向下运行，所以不需要在每个子句结尾 写 break 。
let vegetable = "red pepper"
switch vegetable {
case "celery":
    print("Add some raisins and make ants on a log.")
case "cucumber", "watercress":
    print("That would make a good tea sandwich.")
case let x where x.hasSuffix("pepper"):
    print("is it a spicy \(x)?")
default:
    print("Everything tastes good in soup.")
}



//你可以使用 for-in 来遍历字典，需要两个变量来表示每个键值对。字典是一个无序的 合，所以他们的键和值以 任意顺序迭代结束。
let interestingNumbers = [
    "Prime":[2, 3, 5, 7, 11, 13],
    "Fibonacci":[1, 1, 2, 3, 5, 8],
    "Square":[1, 4, 9, 16, 25]
]
var largest = 0
var numberKind = ""
for (kind, numbers) in interestingNumbers {
    print("\(kind):\(numbers)")
    for number in numbers {
        if number > largest {
            largest = number
            numberKind = kind
        }
    }
}
print(largest, numberKind)



//使用 while 来重复运行一段代码直到不满足条件。循环条件也可以在结尾，保证能至少循环一次。
var n = 2
while n < 100 {
    n = n * 2
}
print(n)

var m = 2
repeat {
    m = m * 2
} while m < 100
print(m)

//使用 ..< 创建的范围不包含上界，如果想包含的话需要使用 ...
var total = 0
for i in 0..<4 {
    total += i
}
print(total)






		