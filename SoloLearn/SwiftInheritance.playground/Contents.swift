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


