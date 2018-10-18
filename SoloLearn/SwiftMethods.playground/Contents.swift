//: Playground - noun: a place where people can play

import UIKit

class Counter {
    var count = 0
    func increment()  {
        count += 1
    }
    func incrementBy(amount: Int) {
        count += amount
    }
    func reset() {
        count = 0
    }
}

var cnt = Counter()
cnt.reset()
cnt.increment()
print(cnt.count)
cnt.incrementBy(amount: 3)
print(cnt.count)

let counter = Counter()
counter.increment()
counter.incrementBy(amount: 5)
print(counter.count)
counter.reset()
print(counter.count)



//self
class Counter2 {
    var count = 0
    func increment() {
        self.count += 1
    }
    func incrementBy(amount: Int) {
        self.count += amount
    }
    func reset() {
        self.count = 0
    }
}

var cnt2 = Counter2()
cnt2.reset()
cnt2.increment()
print(cnt2.count)
cnt2.incrementBy(amount: 3)
print(cnt2.count)



//消除歧义
//如果没有self前缀，Swift将假设x的两种用法都引用了名为x的方法参数。
struct Point {
    var x = 0.0, y = 0.0
    func isToTheRight(x: Double) -> Bool {
        return self.x > x
    }
}
var p = Point()
print(p.isToTheRight(x: 1.1))
p.x = 2.0
print(p.isToTheRight(x: 1.1))



//Structures and enumerations are value types. By default, the properties of a value type cannot be modified from within its instance methods.
//The mutating keyword is added to the method's definition so it can modify its properties.
struct Point2 {
    var x = 0.0, y = 0.0
    mutating func moveByX(dX: Double, dY: Double) {
        x += dX
        y += dY
    }
//    func moveByX(dX: Double, dY: Double) {
//        x += dX
//        y += dY
//    }
    mutating func moveByX2(dX: Double, dY: Double) {
        self.x += dX
        self.y += dY
    }
}

var p2 = Point2()
p2.moveByX(dX: 2.2, dY: 2.4)
print(p2)
p2.moveByX2(dX: 2.2, dY: 2.4)
print(p2)

//You cannot call a mutating method on a constant of structure type, because its properties cannot be changed.
let p3 = Point2()
//p3.moveByX(dX: 2.2, dY: 2.4)
print(p3)



//type method
//Instance methods are called on an instance of a particular type. A type method is called on the type itself, and is indicated by writing the keyword static before the method's func keyword:
//Within the body of a type method, the implicit self property refers to the type itself, rather than an instance of that type.
class SomeClass {
    static func someTypeMethod() {
        print("I am a type method")
        print(self)
    }
    func someInstanceMethod() {
        print("I am a instance method")
        print(self)
    }
}
SomeClass.someTypeMethod()

let s = SomeClass()
s.someInstanceMethod()

