//: Playground - noun: a place where people can play

import UIKit

var imInt : Int = 80
//整形最大值
Int.max
Int.min

//imInt = 99999999999999999999 //溢出，编译时发现（安全）

var imUint : UInt = 80

UInt.max
UInt.min


//Int8 (可兼容嵌入式开发)
//Int16,Uint16,Int32,Int64...
Int8.max
Int8.min
UInt8.max
UInt8.min


//类型推断int
let a = 4

//十进制
let decimalInt : Int = 17
//二进制
let binaryInt : Int = 0b10001
//八进制
let octalInt : Int = 0o21
//十六进制
let hexInt : Int = 0x11


 /// swift创新，大数分割表示
let bigNum = 1_000_000

let bigNum2 = 100_0000






