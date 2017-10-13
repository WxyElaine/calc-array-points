//  Class: INFO 449
//  Name: Xinyi Wang
//  Project: CalcArrayPoints
//
//  Created by Xinyi Wang on 10/12/17.
//  Copyright © 2017 Xinyi Wang. All rights reserved.
//

import Foundation

// Calculator
// Takes two integers as parameter, return their sum as an integer
func add(_ num1: Int, _ num2: Int) -> Int {
    return num1 + num2
}

// Takes two integers as parameter, return their difference as an integer
func subtract(_ num1: Int, _ num2: Int) -> Int {
    return num1 - num2
}

// Takes two integers as parameter, return their product as an integer
func multiply(_ num1: Int, _ num2: Int) -> Int {
    return num1 * num2
}

// Takes two integers as parameter, return their quotient as an integer
func divide(_ num1: Int, _ num2: Int) -> Int {
    return num1 / num2
}

// Takes a function and two integers as parameter, pass the given integer to the given function and return the result as an integer
func math(_ operation: (Int, Int) -> Int, _ num1: Int, _ num2: Int) -> Int {
    return operation(num1, num2)
}

// Array fun
// Takes an array of integer as a parameter, return the sum of all the elements in the array as an integer
func arrayAdd(_ numbers: Array<Int>) -> Int {
    var result = 0
    for i in 0...numbers.count - 1 {
        result += numbers[i]
    }
    return result
}

// Takes an array of integer as a parameter, return the product of all the elements in the array as an integer
func arrayMultiply(_ numbers: Array<Int>) -> Int {
    var result = 1
    for i in 0...numbers.count - 1 {
        result *= numbers[i]
    }
    return result
}

// Takes an array of integer as a parameter, return the count of elements in the array as an integer
func arrayCount(_ numbers: Array<Int>) -> Int {
    return numbers.count
}

// Takes an array of integer as a parameter, return the average of all the elements in the array as an integer
func arrayAvg(_ numbers: Array<Int>) -> Int {
    return arrayAdd(numbers) / numbers.count
}

// Takes a function and an array of integer as parameters, pass the given array to the function and return the result as an integer
func arrayMath(_ operation: (Array<Int>) -> Int, _ array: Array<Int>) -> Int {
    return operation(array)
}

// Points --- represented by Tuples
// Takes two tuples representing two points as parameters, return the sum of two points as a tuple
func tuplePointsAdd(_ pointOne: (x: Int?, y: Int?), _ pointTwo: (x: Int?, y: Int?)) -> (Int, Int) {
    if (pointOne.x != nil && pointOne.y != nil && pointTwo.x != nil && pointTwo.y != nil) {
        return (pointOne.x! + pointTwo.x!, pointOne.y! + pointTwo.y!)
    } else {
        return (0, 0)
    }
}

// Takes two tuples representing two points as parameters, return the difference of two points as a tuple
func tuplePointsSubtract(_ pointOne: (x: Int?, y: Int?), _ pointTwo: (x: Int?, y: Int?)) -> (Int, Int) {
    if (pointOne.x != nil && pointOne.y != nil && pointTwo.x != nil && pointTwo.y != nil) {
        return (pointOne.x! - pointTwo.x!, pointOne.y! - pointTwo.y!)
    } else {
        return (0, 0)
    }
}

// Points --- represented by Dictionaries
// Takes two dictionaries representing two points of integers as parameters, return the sum of two points as a dictionary
func dictionaryPointsAdd(_ pointOne: [String: Int]?, _ pointTwo: [String: Int]?) -> [String: Int] {
    if (pointOne != nil && pointTwo != nil && pointOne!.index(forKey: "x") != nil && pointTwo!.index(forKey: "x") != nil && pointOne!.index(forKey: "y") != nil && pointTwo!.index(forKey: "y") != nil) {
        let newOne = pointOne!
        let newTwo = pointTwo!
        return ["x": newOne["x"]! + newTwo["x"]!, "y": newOne["y"]! + newTwo["y"]!]
    } else {
        return ["x": 0, "y": 0]
    }
}

// Takes two dictionaries representing two points of doubles as parameters, return the sum of two points as a dictionary
func dictionaryPointsAdd(_ pointOne: [String: Double]?, _ pointTwo: [String: Double]?) -> [String: Double] {
    if (pointOne != nil && pointTwo != nil && pointOne!.index(forKey: "x") != nil && pointTwo!.index(forKey: "x") != nil && pointOne!.index(forKey: "y") != nil && pointTwo!.index(forKey: "y") != nil) {
        let newOne = pointOne!
        let newTwo = pointTwo!
        return ["x": newOne["x"]! + newTwo["x"]!, "y": newOne["y"]! + newTwo["y"]!]
    } else {
        return ["x": 0.0, "y": 0.0]
    }
}

// Takes two dictionaries representing two points of integers as parameters, return the difference of two points as a dictionary
func dictionaryPointsSubtract(_ pointOne: [String: Int]?, _ pointTwo: [String: Int]?) -> [String: Int] {
    if (pointOne != nil && pointTwo != nil && pointOne!.index(forKey: "x") != nil && pointTwo!.index(forKey: "x") != nil && pointOne!.index(forKey: "y") != nil && pointTwo!.index(forKey: "y") != nil) {
        let newOne = pointOne!
        let newTwo = pointTwo!
        return ["x": newOne["x"]! - newTwo["x"]!, "y": newOne["y"]! - newTwo["y"]!]
    } else {
        return ["x": 0, "y": 0]
    }
}

// Takes two dictionaries representing two points of doubles as parameters, return the difference of two points as a dictionary
func dictionaryPointsSubtract(_ pointOne: [String: Double]?, _ pointTwo: [String: Double]?) -> [String: Double] {
    if (pointOne != nil && pointTwo != nil && pointOne!.index(forKey: "x") != nil && pointTwo!.index(forKey: "x") != nil && pointOne!.index(forKey: "y") != nil && pointTwo!.index(forKey: "y") != nil) {
        let newOne = pointOne!
        let newTwo = pointTwo!
        return ["x": newOne["x"]! - newTwo["x"]!, "y": newOne["y"]! - newTwo["y"]!]
    } else {
        return ["x": 0.0, "y": 0.0]
    }
}
