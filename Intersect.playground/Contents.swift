//: Playground - noun: a place where people can play

import UIKit



func findIntersect(_ array1: [Int], _ array2: [Int]) -> [Int] {
    var arr1 = array1.sorted()
    var arr2 = array2.sorted()
    
    var left = 0
    var right = 0
    var intersect = [Int]()
    while left < array1.count && right < array2.count {
        if arr1[left] == arr2[right] {
            intersect.append(arr1[left])
            left += 1
            right += 1
        }
        else if arr1[left] < arr2[right] {
            left += 1
        }
        else {
            right += 1
        }
    }
    
    return intersect
    
}

var arr1 = [1, 2, 3, 4, 5, 6, 7, 10, 12, 16, 22]
var arr2 = [3, 4, 10, 17, 18, 22]

findIntersect(arr2, arr1)