//: Playground - noun: a place where people can play

import UIKit

class Vehicle {
    var currentSpeed = 0.0
    var desc: String {
        return "traveling at \(currentSpeed) mph"
    }
    func makeNoise() {
        print("Making some noise")
    }
}

var v = Vehicle()
print(v.desc)
v.makeNoise()



//继承
class Bicycle: Vehicle {
    var hasBasket = false
}

var b = Bicycle()
print(b.desc)
b.makeNoise()

let bicycle = Bicycle()
bicycle.hasBasket = true
bicycle.currentSpeed = 25.0
print("Bicycle: \(bicycle.desc)")



//子类的继承
class Tandem: Bicycle {
    var currNumOfPassengers = 0
}

var td = Tandem()
td.currNumOfPassengers = 4
print(td.hasBasket)
print(td.currNumOfPassengers)

let tandem = Tandem()
tandem.hasBasket = true
tandem.currNumOfPassengers = 2
tandem.currentSpeed = 20.0
print("Tandem:\(tandem.desc)")



//覆写
class Train: Vehicle {
    override func makeNoise() {
        print("Choo Choo")
    }
}
let t = Train()
t.makeNoise()

//调用父类
final class Car: Vehicle {
    final var gear = 1
    override var desc: String {
        return super.desc + " in gear \(gear)"
    }
}
let c = Car()
print(c.desc)


//class NewCar: Car {
//
//}

//You can prevent a method, property, or subscript override by marking it as final (such as final var, final func, final class func, and final subscript).
//You can mark an entire class as final by placing the final modifier before the class keyword in its class definition (final class).


