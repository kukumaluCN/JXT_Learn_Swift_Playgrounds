//: Playground - noun: a place where people can play

import UIKit

struct Size {
    var width: Int
    let height: Int
}
var size1 = Size(width: 10, height: 35)
size1.width = 6
//size1.height = 6
print(size1.width)

//In the example above, height is initialized when the new size is created. This is a constant property, and it cannot be changed once initialized.
//When creating an instance of a structure, if you assign an instance of a structure to a constant, the instance's properties cannot be modified, even if they were declared as variable properties.

let size2 = Size(width: 10, height: 35)
//size2.width = 6
print(size2.width)





//A lazy stored property's initial value is not calculated until the first time it is used.
//You must always declare a lazy property as a variable, using the var keyword, because its initial value might not be retrieved until after the completion of instance initialization. Constant properties must always have a value before initialization completes, and therefore cannot be declared as lazy.
func DataImporter() -> Int {
    print("DataImporter called")
    return 4
}

class DataManager {
    lazy var importer = DataImporter()
    var data = [String]()
}

var dm = DataManager()
print("Lazy property still not used")
print(dm.importer)





//set get
struct Point {
    var x = 0.0, y = 0.0
}
struct Shape {
    var origin = Point()
    var center: Point {
        get {
            return Point(x: origin.x/2, y: origin.y/2)
        }
        set(newCenter) {
            origin.x = newCenter.x/2
            origin.y = newCenter.y/2
        }
    }
}

//If a computed property's setter does not define a name for the new value to be set, a default name of newValue is used.
struct Shape2 {
    var origin = Point()
    var center: Point {
        get {
            return Point(x: origin.x/2, y: origin.y/2)
        }
        set {
            origin.x = newValue.x/2
            origin.y = newValue.y/2
        }
    }
}

//A computed property with a getter but no setter is known as a read-only computed property. It always returns a value, and can be accessed through dot syntax. However, that value cannot be altered.
struct Shape3 {
    var origin = Point()
    var center: Point {
        get {
            return Point(x: origin.x/2, y: origin.y/2)
        }
    }
}

var p = Point(x: 1.1, y: 2.2)
var sh = Shape()
sh.center = p
print(sh.center)

p = Point(x: 2, y: 6)
var sh2 = Shape2()
sh2.center = p
print(sh2.center)

p = Point(x: 2, y: 6)
var sh3 = Shape3()
sh3.origin = p
//sh3.center = p
print(sh3.center)





//属性监听
//Property observers are called every time a property's value is set, even if the new value is the same as the property's current value.
//Property observers can be added to any defined stored properties, with the exception of lazy stored properties.
//You have the option of defining either or both of the following observers of a property:
//- willSet is called just before the value is stored.
//- didSet is called immediately after the new value is stored.
class StepCounter {
    var totalSteps: Int = 0 {
        willSet(newSteps) {
//            print(newValue)
//            print(oldValue)
            print("About to set totalSteps to \(newSteps)")
        }
        didSet {
//            print(newValue)
            print(oldValue)
            if totalSteps > oldValue {
                print("Added \(totalSteps - oldValue) steps")
            }
        }
    }
}
let stepCenter = StepCounter()
stepCenter.totalSteps = 50
stepCenter.totalSteps = 150
stepCenter.totalSteps = 420

//The willSet observer uses a custom parameter name of newSteps for the upcoming new value.
//The didSet observer is called after the value of totalSteps is updated. It compares the new value of totalSteps against the old value. The didSet observer does not provide a custom parameter name for the old value; the default name of oldValue is used, instead.
//Similarly, newValue could be used for the willSet observer, if no parameter name was defined.






//Type properties
//Unlike stored instance properties, you must always give stored type properties a default value. This is because the type itself does not have an initializer that can assign a value to a stored type property at initialization time.
class SomeClass {
    static var storedProp = "Some value."
    static var computedProp: Int {
        return 42
    }
}
print(SomeClass.storedProp)
SomeClass.storedProp = "new value"
print(SomeClass.storedProp)
//SomeClass.computedProp = 2
print(SomeClass.computedProp)

