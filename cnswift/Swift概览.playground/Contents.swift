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
func greet(person: String, day: String) -> String {
    return "Hello \(person), today is \(day)."
}
let greetString = greet(person: "Bob", day: "Tuesday")
print(greetString)

//默认情况下，函数使用他们的形式参数名来作为实际参数标签。在形式参数前可以写自定义的实际参数标签，或者使用 _ 来避免使用实际参数标签。
func greet2(_ person: String, on day: String) -> String {
    return "Hello \(person), today is \(day)."
}
print(greet2("John", on: "Wednesday"))


//使用元组来创建复合值——比如，为了从函数中返回多个值。元组中的元素可以通过名字或者数字调用。
func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
    var min = scores[0]
    var max = scores[0]
    var sum = 0
    
    for score in scores {
        if score > max {
            max = score
        } else if score < min {
            min = score
        }
        sum += score
    }
    
    return (min, max, sum)
}
let statistics = calculateStatistics(scores: [5, 3, 100, 3, 9])
print(statistics.sum)
print(statistics.2)


//函数同样可以接受多个参数，然后把它们存放进数组当中
func sumOf(numbers: Int...) -> Int {
    var sum = 0
    for number in numbers {
        sum += number
    }
    return sum
}
print(sumOf())
print(sumOf(numbers: 42, 597, 12))


//函数可以内嵌。内嵌的函数可以访问外部函数里的变量。你可以通过使用内嵌函数来组织代码，以避免某个函数太长或者太过复杂。
func returnFifteen() -> Int {
    var y = 10
    func add() {
        y += 5
    }
    add()
    return y
}
print(returnFifteen())


//把函数作为值来返回
func makeIncrementer() -> ((Int) -> Int) {
    func addOne(number: Int) -> Int {
        return 1 + number
    }
    return addOne
}
var increment = makeIncrementer()
print(increment(7))


//函数也可以把另外一个函数作为其自身的参数
func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool {
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
print(hasAnyMatches(list: numbers, condition: lessThanTen))


//函数其实就是闭包的一种特殊形式：一段可以被随后调用的代码块。闭包中的代码可以访问其生效范围内的变量和函数，就算是闭包在它声明的范围之外被执行——你已经在内嵌函数的栗子上感受过了。你可以使用花括号（ {}）括起一个没有名字的闭包。在闭包中使用 in来分隔实际参数和返回类型。
let numbersMap = numbers.map({
    (number: Int) -> Int in
    let result = 3 * number
    return result
})
print(numbers)
print(numbersMap)

//你有更多的选择来把闭包写的更加简洁。当一个闭包的类型已经可知，比如说某个委托的回调，你可以去掉它的参数类型，它的返回类型，或者都去掉。
let mappedNumbers = numbers.map({ number in 4 * number })
print(mappedNumbers)

//你可以调用参数通过数字而非名字——这个特性在非常简短的闭包当中尤其有用。当一个闭包作为函数最后一个参数出入时，可以直接跟在圆括号后边。如果闭包是函数的唯一参数，你可以去掉圆括号直接写闭包。
//let sortedNumbers = numbers.sorted() { $0 < $1 }
let sortedNumbers = numbers.sorted { $0 < $1 }
print(sortedNumbers)















/*
 对象和类
 */
class Shape {
    var numberOfSides = 0
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}
var shape = Shape()
shape.numberOfSides = 7
print(shape.simpleDescription())


//一个用在创建实例的时候来设置类的初始化器。使用 init来创建一个初始化器。
//注意使用 self来区分 name属性还是初始化器里的 name参数。
//创建类实例的时候给初始化器传参就好像是调用方法一样。
//每一个属性都需要赋值——要么在声明的时候（比如说 numberOfSides），要么就要在初始化器里赋值（比如说 name）。
//使用 deinit来创建一个反初始化器，如果你需要在释放对象之前执行一些清理工作的话。
class NamedShape {
    var numberOfSides: Int = 0
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    deinit {
        print("deinit")
    }
    
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}
var namedShape = NamedShape(name: "NamedShape")
print(namedShape.simpleDescription())


//声明子类就在它名字后面跟上父类的名字，用冒号分隔。创建类不需要从什么标准根类来继承，所以你可以按需包含或者去掉父类声明。
//子类的方法如果要重写父类的实现，则需要使用 override——不使用 override关键字来标记则会导致编译器报错。编译器同样也会检测使用 override的方法是否存在于父类当中。
class Square: NamedShape {
    var sideLength: Double
    
    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 4
    }
    
    func area() -> Double {
        return sideLength * sideLength
    }
    
    override func simpleDescription() -> String {
//        print(super.simpleDescription())
        return "A square with sides of length \(sideLength)."
    }
}
let test = Square(sideLength: 5.2, name: "my test square")
print(test.area())
print(test.simpleDescription())

