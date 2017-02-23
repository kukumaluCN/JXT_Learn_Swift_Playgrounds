//: Playground - noun: a place where people can play

import UIKit

//区间运算符
//闭区间运算符
//[a,b]   a...b
//前闭后开区间运算符
//[a,b）   a..<b

for index in 1...10 {
    index
//    index = 5 //常量不可改变
}


for index in 0..<10 {
    index
}


let courses = ["课程1", "课程2", "课程3", "课程4", "课程5", "课程6", "课程7"]

//for i in 0...courses.count-1
for i in 0..<courses.count {
    print(courses[i])
}



		