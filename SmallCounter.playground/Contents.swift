//: Playground - noun: a place where people can play

import UIKit

var arr = [10, 40, 23, 35, 50, 7]


func smallerThanCount(arr: [Int]) -> [Int] {
    var j = 0
    var i = 0
    var res = [Int]()
    res.append(arr[i])
    i += 1
    while i < arr.count {
        if arr[i] > res[j] {
            res.append(arr[i])
            j += 1
        }
        i += 1
    }
    
    return res
}

let res = smallerThanCount(arr: arr)
print(res)



func removeDupes(arr: [Int]) -> [Int] {
    
    var res = [Int]()
    var i = 0
    var j = 0
    res.append(arr[0])
    while i < arr.count {
        if arr[i] > res[j]{
            res.append(arr[i])
            j += 1
        }
        i += 1
    }
    return res
}

func equalPoint(arr: [Int]) -> Int{
    
    var found = -1
    var n = arr[0]
    var left = [Int]()
    for i in 0..<arr.count {
        if i != n {
            left.append(n)
            n = i
        }
        
        let right = Array(arr[i..<arr.count])
        let uniqueRight = removeDupes(arr: right)
        
        if uniqueRight.count == left.count {
            found = i
        }
    }
    return found
}


let ints = [1, 2, 3, 4, 4, 5, 6, 6, 6, 7, 8, 8, 9, 10, 10]
print(equalPoint(arr: ints))
