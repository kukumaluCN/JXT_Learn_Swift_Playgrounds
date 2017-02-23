//: Playground - noun: a place where people can play

import UIKit

// Tuple 元组
// 将多个数据放入同一个数据类型中，类似结构体
// 可以有任意多个值
// 不同的值可以是不同类型
var point = ( 5, 2 )
var httpResponse = ( 404, "Not Found" )

//显示类型
var point2 : (Int, Int, Int) = (10, 5, 2)
var httpResponse2 : (Int, String) = ( 200, "OK" )


// 使用
// 解包
let (x, y) = point
x
y
var (statusCode, statusMessage) = httpResponse
statusCode
statusMessage

statusCode = 405
//x = 5

// .引用
point.0
point.1


// 为了直观，命名
let point3 = (x : 3, y : 2)
point3.x
point3.y

let point4 : (x : Int, y : Int) = (10, 5)
point4.x
point4.y



let logResult = (true, "liu")
//部分解包
// 使用“_”忽略一些值，swift经常使用
let (isLoginSuccess, _) = logResult
if isLoginSuccess {
    print("Login success")
}
else {
    print("Login failed")
}


// 函数返回值，可以是多个数据，元组
// 元组适合轻量级数据的集合






