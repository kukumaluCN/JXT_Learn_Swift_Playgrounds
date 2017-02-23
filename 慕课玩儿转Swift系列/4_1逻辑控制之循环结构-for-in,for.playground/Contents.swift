//: Playground - noun: a place where people can play

import UIKit

//控制流
//顺序结构
//循环结构
//选择结构


for i in -99...99 {
    i*i
}


//不在乎遍历位置，只管遍历次数
//2^10
var result = 1
var base = 2
var power = 10
//用“_”忽略值，不关注
for _ in 1...power {
    result *= base
}
result



//for in 局限性
//区间遍历
//整型
//一个数一个数遍历



//for
for i in -99...99 {
    i*i
}

//swift3 弃用了 for
//for var i = -99 ; i <= 99 ; i += 1 {
//    
//}


//swift3
//反向
for i in (1..<10).reversed() {
    print(i)
}
//步长 <
for i in stride(from: 0, to: 10, by: 2) {
    print(i)
}
// <=
for i in stride(from: 0, through: 10, by: 2) {
    print(i)
}

for i in stride(from: 10, to: 0, by: -2) {
    print(i)
}

for i in stride(from: 0.5, to: 1.5, by: 0.1) {
    print(i)
}

