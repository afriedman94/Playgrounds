//: Playground - noun: a place where people can play

import UIKit


var arr1 = [1, 3, 4, 5 , 7, 10, 12]
let arr2 = [2, 3, 5, 6, 9, 12, 14]


func union(arr1: [Int], arr2: [Int]) -> [Int] {
    
    var i = 0
    var j = 0
    var returnArr = [Int]()
    while i < arr1.count && j < arr2.count {
        if arr1[i] > arr2[j] {
            returnArr.append(arr2[j])
            j += 1
        }
        else if arr1[i] < arr2[j] {
            returnArr.append(arr1[i])
            i += 1
        }
        else {
            returnArr.append(arr1[i])
            i += 1
            j += 1
        }
    }
    
    if j == arr2.count {
        while i < arr1.count {
            returnArr.append(arr1[i])
            i += 1
        }
    }
    else {
        while j < arr2.count {
            returnArr.append(arr2[j])
            j += 1
        }
    }
    return returnArr
}
let u = union(arr1: arr1, arr2: arr2)
print(u)


