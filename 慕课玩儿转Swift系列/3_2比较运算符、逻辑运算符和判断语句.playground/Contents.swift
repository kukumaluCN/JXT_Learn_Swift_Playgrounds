//: Playground - noun: a place where people can play

import UIKit

// 比较运算符

//比较引用变量
//a === b
//a !== b

let money = 100
let price = 70

if money >= price {
    print("Buy it")
}


let capacity = 30
let volume = 50

if (money >= price) && (capacity >= volume) {
    print("Buy it")
}

if money < price || capacity < volume {
    print("Can not buy it")
}

//单目运算符不可空格
// ! 不可以加空格
if !(money >= price && capacity >= volume) {
    print("Can not buy it")
}


var isUsernameOK = false
var isPasswordOK = false

var isPhoneNumberOK = true
var isPhoneCodeOK = false

//便于阅读，加（）
if (isUsernameOK && isPasswordOK) || (isPhoneNumberOK && isPhoneCodeOK) {
    print("Login success")
}
else {
    print("Login failed")
}




