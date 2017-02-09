//: Playground - noun: a place where people can play

import UIKit


// Given a sorted array and a number x, find a pair in array whose sum is closest to x.


let v = [1, 6, 10, 15, 20, 25, 26, 30, 52]

func findPairSum(_ arr: [Int], _ n: Int) -> (Int, Int)? {
    
    var left = 0
    var right = arr.count-1
    var smallestDif :Int = arr[left] + arr[right] - n
    var tupe :(Int, Int)?
    while left < right {
        let sum = arr[left] + arr[right]
        let dif = abs(sum-n)
        if smallestDif >= dif {
            smallestDif = dif
            tupe = (arr[left],arr[right])
        }
        if sum < n {
            left += 1
        }
        else if sum > n {
            right -= 1
        }
        else {
            return tupe
        }
    }
    
    return tupe
}

findPairSum(v, 21)
