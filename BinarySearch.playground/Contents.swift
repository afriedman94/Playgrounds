//: Playground - noun: a place where people can play

import UIKit

var arr = [1, 3, 4, 6, 9, 12, 13, 20, 33, 41]

func binarySearch(arr: [Int], search: Int) -> Int? {
    
    var lowerBound = 0
    var upperBound = arr.count
    while lowerBound < upperBound {
        let middle = (lowerBound + upperBound) / 2
        print("lower: \(lowerBound) mid: \(middle) up: \(upperBound)")
        
        if arr[upperBound-1] == search {
            return upperBound-1
        }
        
        if arr[lowerBound] == search {
            return lowerBound
        }
        
        if arr[middle] == search {
            return middle
        }
        else if arr[middle] > search {
            upperBound = middle
        }
        else {
            lowerBound = middle + 1
        }
    }
    return nil
}

binarySearch(arr: arr, search: 13)
