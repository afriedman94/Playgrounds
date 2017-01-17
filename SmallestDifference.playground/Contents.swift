//: Playground - noun: a place where people can play

import UIKit


var array1 = [1, 3, 5, 15, 22, 31]
var array2 = [18, 20]

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
        print(newMin)
        
    }
    
    return res ?? nil
}

smallestDif(array1, array2)
