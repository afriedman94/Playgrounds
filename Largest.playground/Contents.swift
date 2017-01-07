
// An example of using a hash table in order to search for a result that would other wise need to be 
// done in quadratic time for an unsorted array


import UIKit

var array = [10, 3, 6, 300, 43, 88] // find a sum equal to 91

func search(arr: [Int], sum: Int) -> (Int, Int) {
    
    var searchTable = [Int: Int]()
    for n in 0..<arr.count {
        let dif = sum - arr[n] // diference of the current index's value from the sum
        if let difVal = searchTable[arr[n]] { // if there is a key containing the difference
            return (difVal, arr[n]) // return the tuple
        }
        else { // there is no key containing the difference
            searchTable[dif] = arr[n]
        }
    }
    return (-1, -1)
}

search(arr: array, sum: 310)