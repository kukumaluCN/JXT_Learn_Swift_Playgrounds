//: Playground - noun: a place where people can play

import UIKit

//使用 func 来声明一个函数，使用名字和参数来调用函数。使用 -> 来指定函数返回值的类型。
func greet(person: String, day: String) -> String {
    return "Hello \(person), today is \(day)"
}
greet(person: "Bob", day: "Tuesday")

func greetTest(person: String, food: String) -> String {
    return "Hello \(person) ate \(food) at noon"
}
greetTest(person: "LiMing", food: "noodles")



//默认情况下，函数使用它们的“参数名称作为它们参数的标签”，在参数名称前可以自定义参数标签，或者使用 _ 表示不使用参数标签。
func greet2(_ person: String, on day: String) -> String {
    return "Hello \(person), today is \(day)"
}
greet2("John", on: "Wednesday")



//使用元组来让一个函数返回多个值。该元组的元素可以用名称或数字来表示。
func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
    var min = scores[0]
    var max = scores[0]
    var sum = 0
    
    for score in scores {
        if score > max {
            max = score
        }
        else if score < min {
            min = score
        }
        sum += score
    }
    return (min, max, sum)
}
let statistic = calculateStatistics(scores: [5, 3, 100, 3, 9])
print(statistic.sum)
print(statistic.2)



//函数可以带有可变个数的参数，这些参数在函数内表现为数组的形式
func sumOf(numbers: Int ...) -> Int {
    var sum = 0
    for number in numbers {
        sum += number
    }
    return sum
}
sumOf()
sumOf(numbers: 42, 597, 12)

func avgOfNumbers(_ numbers: Int...) -> Float {
    var sum = 0
    for number in numbers {
        sum += number
    }
    let avg = Float(sum) / Float(numbers.count)
    return avg;
}
avgOfNumbers()
avgOfNumbers(14, 12, 34, 101, 23)



//函数可以嵌套。被嵌套的函数可以访问外侧函数的变量，你可以使用嵌套函数来重构一个太长或者太复杂的函数。
func returnFifteen() -> Int {
    var y = 10
    func add() {
        y += 5
    }
    add()
    return y
}
returnFifteen()



//函数是第一等类型，这意味着函数可以作为另一个函数的返回值。
func makeIncrementer() -> ( (Int) -> Int ) {
    func addOne(number: Int) -> Int {
        return 1 + number
    }
    return addOne
}
var increment = makeIncrementer()
increment(7)

func makeIncrementer2() -> ( (Int, Int) -> Int ) {
    func addOneTwo(number: Int, number2: Int) -> Int {
        return 1 + number + number2
    }
    return addOneTwo
}
var increment2 = makeIncrementer2()
increment2(7, 8)



//函数也可以当做参数传入另一个函数。
func hasAnyMatches(list: [Int], condition: (Int) -> Bool ) -> Bool {
    for item in list {
        if condition(item) {
            return true
        }
    }
    return false
}
func lessThanTen(number: Int) -> Bool {
    return number < 10
}
var numbers = [20, 19, 7, 12]
hasAnyMatches(list: numbers, condition: lessThanTen)



//函数实际上是一种特殊的闭包:它是一段能之后被调取的代码。闭包中的代码能访问闭包所建作用域中能得到的变 量和函数，即使闭包是在一个不同的作用域被执行的 - 你已经在嵌套函数例子中所看到。你可以使用 {} 来创建 一个匿名闭包。使用 in 将参数和返回值类型声明与闭包函数体进行分离。
numbers.map({
    (number: Int) -> Int in
    let result = 3 * number
    return result
})



//有很多种创建更简洁的闭包的方法。如果一个闭包的类型已知，比如作为一个回调函数，你可以忽略参数的类型和返回值。单个语句闭包会把它语句的值当做结果返回。
let mappedNumbers = numbers.map({number in 3 * number})
print(mappedNumbers)



//你可以通过参数位置而不是参数名字来引用参数——这个方法在非常短的闭包中非常有用。当一个闭包作为最后一个参数传给一个函数的时候，它可以直接跟在括号后面。当一个闭包是传给函数的唯一参数，你可以完全忽略括号。
let sortedNumbers = numbers.sorted{ $0 > $1 }//sort{ $0 > $1 }
print(sortedNumbers)






