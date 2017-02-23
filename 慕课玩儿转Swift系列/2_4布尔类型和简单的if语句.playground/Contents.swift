//: Playground - noun: a place where people can play

import UIKit

let imTrue : Bool = true
let imFalse = false

if imTrue {
    print("I'm true")
}

if (imTrue) {
    print("I'm true")
}

//if imTrue 
//    print("I'm true")

if !imTrue {
    print("I'm true")
}
else if 3 + 4 == 7 {
    print("3+4==7")
}
else { //冗余
    print("I'm flase")
}


//if 1 { //类型错误
//    print("True")
//}
let a = 1
if a == 1 {
    print("True")
}