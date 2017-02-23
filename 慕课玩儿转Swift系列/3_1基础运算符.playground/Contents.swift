//: Playground - noun: a place where people can play

import UIKit

// 赋值运算符
var a = 3
a = 1 //赋值同时，有返回值

// swift 禁止将赋值运算符作为判断条件
//if a = 1 {
//    print("a = 1")
//}


// 数学运算符
var x = 10
var y = 3
var z = 0

x + y
x - y
x * y
x / y
x % y

//同时强转才行
Double(x) / Double(y)

//编译器直接报错
//x / z
//x % z

// 求余可以是小数
let u = 2.5
let v = 1.2
//u % v


//单目运算符，不能有空格+ x
var xx = +x
var yy = -x

//不能有空格
//x++ //返回后+1
//++x //+1再返回
//x--

x += 2

        
