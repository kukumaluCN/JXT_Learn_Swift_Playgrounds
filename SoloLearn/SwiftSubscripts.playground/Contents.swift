//: Playground - noun: a place where people can play

import UIKit

//Subscripts enable you to query instances of a type by writing one or more values in square brackets after the instance name.
struct TimesTable {
    let multiplier: Int
    subscript(index: Int) -> Int {
        return multiplier * index
    }
}
let threeTimesTable = TimesTable(multiplier: 3)
print(threeTimesTable[5])



//矩阵
struct Matrix {
    let rows: Int, columns: Int
    var grid: [Double]
    init(rows: Int, columns: Int) {
        self.rows = rows
        self.columns = columns
        grid = Array(repeating: 0.0, count: rows * columns)
    }
    subscript(r: Int, col: Int) -> Double {
        get {
            return grid[(r * columns) + col]
        }
        set {
            grid[(r * columns) + col] = newValue
        }
    }
}
var m = Matrix(rows: 2, columns: 2)
m[0, 0] = 1.1
m[0, 1] = 2.1
print(m[0, 0])
print(m)

var matrix = Matrix(rows: 2, columns: 2)
matrix[0, 1] = 1.5
matrix[1, 0] = 3.2
print(matrix[0, 1])
print(matrix[1, 0])
print(matrix)


