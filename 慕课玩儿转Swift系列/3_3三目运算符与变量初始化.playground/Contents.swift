//: Playground - noun: a place where people can play

import UIKit

var battery = 18
//var batteryColor : UIColor
let batteryColor : UIColor
//print(batteryColor)//报错，未初始化，必须初始化才能使用

if battery <= 20 {
    batteryColor = UIColor.red;
}
else {
    batteryColor = UIColor.green;
}
//batteryColor = UIColor.black
batteryColor


var batteryColor2 = battery <= 20 ? UIColor.red : UIColor.green;

