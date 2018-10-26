//: Playground - noun: a place where people can play

import UIKit

//数组

//数组是最基本的数据结构。在 Swift 中，以前 Objective-C 时代中将 NSMutableArray 和 NSArray 分开的做法，被统一到了唯一的数据结构 —— Array 。虽然看上去就一种数据结构，其实它的实现有三种：
//ContiguousArray<Element>：效率最高，元素分配在连续的内存上。如果数组是值类型（栈上操作），则 Swift 会自动调用 Array 的这种实现；如果注重效率，推荐声明这种类型，尤其是在大量元素是类时，这样做效果会很好。
//Array<Element>：会自动桥接到 Objective-C 中的 NSArray 上，如果是值类型，其性能与 ContiguousArray 无差别。
//ArraySlice<Element>：它不是一个新的数组，只是一个片段，在内存上与原数组享用同一区域。

//声明一个不可修改的数组
let nums = [1, 2, 3]
print(nums)

let nums2 = [Int](repeating: 0, count: 5)
print(nums2)

//声明一个可以修改的数组
var nums3 = [3, 1, 2]
print(nums3)

//增加一个元素
nums3.append(4)
print(nums3)

//对原数组进行升序排序
nums3.sort()
print(nums3)

//对原数组进行降序排序
nums3.sort(by: >)
print(nums3)

//将原数组除了最后一个以外的所有元素赋值给另一个数组
let anotherNums = Array(nums3[0..<nums3.count - 1])
print(anotherNums)


//用数组实现栈
class Stack {
    var stack: [AnyObject]
    var isEmpty: Bool {
        return stack.isEmpty
    }
    var peek: AnyObject? {
        return stack.last
    }
    
    init() {
        stack = [AnyObject]()
    }
    
    func push(object: AnyObject) {
        stack.append(object)
    }
    
    func pop() -> AnyObject? {
        if (!isEmpty) {
            return stack.removeLast()
        }
        else {
            return nil
        }
    }
}

let stack = Stack()
stack.push(object: 1 as AnyObject)
stack.push(object: 2 as AnyObject)
print(stack.stack)
stack.pop()
print(stack.stack)





//字典和集合

let primeNums: Set = [3, 5, 7, 11, 13]
let oddNums: Set = [1, 3, 5, 7, 9]

//交集、并集、差集
let primeAndOddNum = primeNums.intersection(oddNums)
print(primeAndOddNum)
let primeOrOddNum = primeNums.union(oddNums)
print(primeOrOddNum)
let oddNotPrimeNum = oddNums.subtracting(primeNums)
print(oddNotPrimeNum)


//用字典和高阶函数计算字符串中每个字符的出现频率，结果 [“h”:1, “e”:1, “l”:2, “o”:1]
Dictionary("hello".map { ($0, 1) }, uniquingKeysWith: +)
let dic = Dictionary("hello".map { ($0, 1) }, uniquingKeysWith: +)
print(dic)



//给一个整型数组和一个目标值，判断数组中是否有两个数字之和等于目标值
//这道题是传说中经典的 “2Sum”，我们已经有一个数组记为 nums，也有一个目标值记为 target，最后要返回一个 Bool 值。
//最粗暴的方法就是每次选中一个数，然后遍历整个数组，判断是否有另一个数使两者之和为 target。这种做法时间复杂度为 O(n^2)。
//采用集合可以优化时间复杂度。在遍历数组的过程中，用集合每次保存当前值。假如集合中已经有了目标值减去当前值，则证明在之前的遍历中一定有一个数与当前值之和等于目标值。这种做法时间复杂度为 O(n)，代码如下。
func twoSum(nums: [Int], _ target: Int) -> Bool {
    var set = Set<Int>()
    
    for num in nums {
        if set.contains(target - num) {
            return true
        }
        
        set.insert(num)
        print(set)
    }
    
    return false
}

let numsArr = [1, 2, 2, 3, 4, 3, 6]
let target = 9
print(twoSum(nums: numsArr, target))



//给定一个整型数组中有且仅有两个数字之和等于目标值，求两个数字在数组中的序号
//思路与上题基本类似，但是为了方便拿到序列号，我们采用字典，时间复杂度依然是 O(n)。代码如下。
func twoSum2(nums: [Int], _ target: Int) -> [Int] {
    var dict = [Int: Int]()
    print(nums.enumerated())
    
    for (i, num) in nums.enumerated() {
        if let lastIndex = dict[target - num] {
            return [lastIndex, i]
        }
        else {
            dict[num] = i
            print(dict)
        }
    }
    
    fatalError("No valid output!")
}
print(twoSum2(nums: numsArr, target))





//字符串

//在 Swift 中，字符串不同于其他语言（包括 Objective-C），它是值类型而非引用类型。首先还是列举一下字符串的通常用法。

//字符串和数字之间的转换
let str = "3"
print(str)

let num = Int(str)
print(num!)

let number = 3
print(number)

let string = String(number)
print(string)


//字符串长度
let len = str.count
print(len)


//访问字符串中的单个字符，时间复杂度为O(1)
let char = str[str.index(str.startIndex, offsetBy: 0)]
print(char)


//修改字符串
var str2 = "123"
print(str2)

str2.remove(at: str2.startIndex)
print(str2)

str2.removeFirst(1)
print(str2)

str2.append("c")
print(str2)

str2 += " hello world"
print(str2)

//检测字符串是否是由数字构成
func isStrNum(str: String) -> Bool {
    return Int(str) != nil
}
print(Int("123t"))
print(isStrNum(str: "123t"))
print(isStrNum(str: "456"))

//将字符串按字母排序（不考虑大小写）
func sortStr(str: String) -> String {
    return String(str.sorted())
}
print("aecfsoh".sorted())
print(sortStr(str: "aecfsoh"))



//给一个字符串，将其按照单词顺序进行反转。比如说 s 是 "the sky is blue",
//那么反转就是 "blue is sky the"。

//这道题目一看好简单，不就是反转字符串的翻版吗？这种方法有以下两个问题
//每个单词长度不一样
//空格需要特殊处理 这样一来代码写起来会很繁琐而且容易出错。不如我们先实现一个字符串翻转的方法。

fileprivate func reverse<T>(_ chars: inout [T], _ start: Int, _ end: Int) {
    var start = start, end = end
    
    while start < end {
        swap(&chars, start, end)
        start += 1
        end -= 1
    }
}
fileprivate func swap<T>(_ chars: inout [T], _ p: Int, _ q: Int) {
    (chars[p], chars[q]) = (chars[q], chars[p])
}

var reverseStr = "the sky is blue"
var ch = Array(reverseStr)
reverse(&ch, 0, ch.count-1)
print(reverseStr)

//有了这个方法，我们就可以实行下面两种字符串翻转：

//整个字符串翻转，"the sky is blue" -> "eulb si yks eht"
//每个单词作为一个字符串单独翻转，"eulb si yks eht" -> "blue is sky the" 整体思路有了，我们就可以解决这道问题了

func reverseWords(s: String?) -> String? {
    guard let s = s else {
        return nil
    }
    
    var chars = Array(s), start = 0
    reverse(&chars, 0, chars.count - 1)
    print(chars)
    
    for i in 0 ..< chars.count {
        if i == chars.count - 1 || chars[i + 1] == " " {
            reverse(&chars, start, i)
            start = i + 2 //跳过空格
        }
    }
    
    return String(chars)
}

print(reverseWords(s: "the sky is blue"))

