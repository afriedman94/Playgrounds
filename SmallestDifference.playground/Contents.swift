//: Playground - noun: a place where people can play

import UIKit


func smallestDif(_ first: [Int], _ second: [Int]) -> (Int, Int)? {
    let firstSorted = first.sorted()
    let secondSorted = second.sorted()
    var res :(Int, Int)?
    for val in firstSorted {
        
        //Find the value in other array that's closest to it.
        var left = 0
        var right = secondSorted.count-1
        var mid = (left+right)/2
        while left <= right {
            mid = (left+right)/2
            let midVal = secondSorted[mid]
            if val == midVal {
                return (val, midVal)
            }
            else if val < midVal {
                right = mid-1
            }
            else {
                left = mid+1
            }
        }

        var minIndex = -1
        if left > second.count-1 {
            minIndex = right
        }
        else if right < 0 {
            minIndex = left
        }
        else if abs(secondSorted[left]-val) < abs(secondSorted[right]-val) {
            minIndex = left
        }
        else {
            minIndex = right
        }
        
        let newMin = abs(val-secondSorted[minIndex])
        if let r = res {
            if newMin <= abs(r.0-r.1) {
                res = (val, secondSorted[minIndex])
            }
        }
        else {
            res = (val, secondSorted[minIndex])
        }
    }
    
    return res ?? nil
}

func closestPair(_ array1: [Int], _ array2: [Int]) -> (Int, Int)? {
    let sorted1 = array1.sorted()
    let sorted2 = array2.sorted()
    
    var index1 = 0
    var index2 = 0
    
    var minDifference: Int?
    var pair: (Int, Int)?
    
    while index1 < sorted1.count && index2 < sorted2.count {
        let element1 = sorted1[index1]
        let element2 = sorted2[index2]
        
        let difference = abs(element1 - element2)
        
        if minDifference.map({ difference < $0 }) ?? true {
            minDifference = difference
            pair = (element1, element2)
        }
        
        if element1 == element2 {
            return pair
        }
        else if element1 < element2 {
            index1 += 1
        } else {
            index2 += 1
        }
    }
    
    return pair
}

var array1 = [0, 1, 3]
var array2 = [0, 0, 0, 0, 1]

smallestDif(array1, array2)
closestPair(array1, array2)
