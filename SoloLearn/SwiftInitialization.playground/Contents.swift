//: Playground - noun: a place where people can play

import UIKit

struct Fahrenheit {
    var temp: Double
    init() {
        print("Initialization")
        temp = 32.0
    }
}
var f = Fahrenheit()
print(f.temp)



struct Celsius {
    var tempInCelsius: Double
    init(fromFahrenheit fahrenheit: Double) {
        print("Initializing from Fahrenheit")
        tempInCelsius = (fahrenheit - 32.0) / 1.8
    }
    init(fromKelvin kelvin: Double) {
        print("Initializing from Kelvin")
        tempInCelsius = kelvin - 273.15
    }
}
let boilingPoint = Celsius(fromFahrenheit: 212.0)
let freezingPoint = Celsius(fromKelvin: 273.15)



//结构体默认成员初始化
struct Size {
    var width = 0.0, height = 0.0
}
let twoByTwo = Size(width: 2.0, height: 2.0)
print("Width: \(twoByTwo.width)")
print("Height: \(twoByTwo.height)")




class Size2 {
    var width: Double, height: Double
    init(w: Double, h: Double) {
        width = w
        height = h
    }
}
let twoByTwo2 = Size2(w: 2.0, h: 2.0)
print("Width: \(twoByTwo2.width)")
print("Height: \(twoByTwo2.height)")




//required Initialization
class SomeClass {
    required init() {
        print("This initializer is required")
    }
}
let s = SomeClass()



class SomeSubclass: SomeClass {
    required init() {
        print("Subclass initializer must be required")
    }
}
let ss = SomeSubclass()



//Deinitializers are only available on class types.
class SomeClass2 {
    init() {
        print("Init is called")
    }
    deinit {
        print("Deinit is called")
    }
}
var s2: SomeClass2? = SomeClass2()
s2 = nil


