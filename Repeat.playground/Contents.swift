

//Given an array of n elements which contains elements from 0 to n-1, with any of these numbers appearing any number of times. Find these repeating numbers in O(n) and using only constant memory space.

import UIKit


func findRepeats(_ arr: inout [Int]) -> Int {
    
    var count = 0
    
    for n in 0..<arr.count {
        if arr[abs(arr[n])] >= 0 {
            arr[abs(arr[n])] = -arr[abs(arr[n])]
        }
        else {
            count += 1
        }
    }
    return count
}


var arr = [1, 2, 3, 1, 3, 6, 6]

findRepeats(&arr)
