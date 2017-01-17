
//: Playground - noun: a place where people can play

import UIKit



func findDuplicates(array: [Int]) -> [Int] {
    
    var map = [Int: Int]()
    var duplicates = [Int]()
    for n in 0..<array.count {
        let val = array[n]
        if map[val] == val {
            duplicates.append(val)
            map[val] = -1
        }
        else {
            map[val] = val
        }
    }
    return duplicates
}

var array = [3, 5, 3, 5, 10, 52, 234, 19, 3934, 140, 10, 92, 49, 20, 3, 50, 52, 10, 60, 92]
findDuplicates(array: array)

