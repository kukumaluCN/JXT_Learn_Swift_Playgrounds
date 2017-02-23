//: Playground - noun: a place where people can play

import UIKit

 /// 浮点数

let imFloat : Float = 3.1415926
let imDouble : Double = 3.1415926


let x = 3.1415926


var a = 1.25e10
var b = 1.25e-8


var c = 1_000_000.000_000_1



 /// 类型转换

let xx : UInt16 = 1500
let yy : UInt8 = 20

//swift没有自动（隐式）类型转换（不推荐，安全）
//xx + yy

let m = xx + UInt16(yy)
//let n = UInt8(xx) + yy //溢出


let aa : Double = 3.0
let bb : Float = 0.3
aa + Double(bb)
Float(aa) + bb


let w : Float = 3
//let v : Int = 3.0
let v : Int = Int(3.0)

let integer = 3
let fraction = 0.1415926
let pi = Double(integer) + fraction



//let red : Float = 0.2
//let green : Float = 0.5
//let blue : Float = 0.3
let red : CGFloat = 0.2
let green : CGFloat = 0.5
let blue : CGFloat = 0.3
UIColor(red: red, green: green, blue: blue, alpha: 1.0)





