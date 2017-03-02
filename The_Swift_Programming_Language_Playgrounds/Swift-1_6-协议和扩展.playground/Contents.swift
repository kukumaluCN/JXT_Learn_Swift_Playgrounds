//: Playground - noun: a place where people can play

import UIKit

//使用 protocol 来声明一个协议。
protocol ExampleProtocol {
    var simpleDescription: String { get }
    mutating func adjust()
}




//类、枚举和结构体都可以实现协议。
class SimpleClass: ExampleProtocol {
    var simpleDescription: String = "A very simple class."
    var anotherProperty: Int = 69105
    func adjust() {
        simpleDescription += " Now 100% adjusted."
    }
}
var a = SimpleClass()
a.adjust()
let aDescription = a.simpleDescription


//注意声明 SimpleStructure 时候 mutating 关键字用来标记一个会修改结构体的方法。 SimpleClass 的声明不需要 标记任何方法，因为类中的方法通常可以修改类属性(类的性质)。
struct SimpleStructure: ExampleProtocol {
    var simpleDescription: String = "A simple structure"
    mutating func adjust() {
        simpleDescription += " (adjusted)"
    }
}
var b = SimpleStructure()
b.adjust()
let bDescription = b.simpleDescription


//enum SimpleEnum: ExampleProtocol {
//    internal var simpleDescription: String = "A "
//    
//    case simpleDescription
////    var simpleDescription: String = "A simple enum"
//    mutating func adjust() {
////        simpleDescription += " (adjusted)"
//    }
//}




//使用 extension 来为现有的类型添加功能，比如新的方法和计算属性。你可以使用扩展在别处修改定义，甚至是 从外部库或者框架引入的一个类型，使得这个类型遵循某个协议。
extension Int: ExampleProtocol {
    var simpleDescription: String {
        return "The number \(self)"
    }
    mutating func adjust() {
        self += 42
    }
}
var num: Int = 5
num.adjust()
num.simpleDescription

print(7.simpleDescription)



extension Double {
    var absoluteValue: Double {
        return abs(self)
    }
}
let exampleDouble = -30.0
exampleDouble.absoluteValue




//你可以像使用其他命名类型一样使用协议名——例如，创建一个有不同类型但是都实现一个协议的对象 合。当你处理类型是协议的值时，协议外定义的方法不可用。
//即使 protocolValue 变量运行时的类型是 simpleClass ，编译器会把它的类型当做 ExampleProtocol 。这表示你不 能调用类在它实现的协议之外实现的方法或者属性。
let protocolValue: ExampleProtocol = a
print(protocolValue.simpleDescription)
//print(protocolValue.anotherProperty)



		