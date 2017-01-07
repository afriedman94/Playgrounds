

// A magic index in an array A[0...n-1] is defined to be an index such that A[i] = i. Given a sorted array of distinct integers, write a method to find a magic index, if one exists, in an array. 



let arr = [-4, -2, 2, 5, 6, 7, 10]


func magicIndex(arr: [Int]) -> Int {
    var lower = 0
    var upper = arr.count-1
    return magicIndex(arr: arr, &lower, &upper)
}

//Finding the magic index in logarithmic time efficieny - with a sorted array. very similar to a binary search
func magicIndex(arr: [Int], _ lowerBound: inout Int, _ upperBound: inout Int) -> Int {
    
    if (lowerBound > upperBound) {
        return -1
    }
    let mid = (lowerBound + upperBound) / 2
    
    if arr[mid] == mid {
        return mid
    }
    if arr[mid] > mid {
        upperBound = mid-1
    }
    else {
        lowerBound = mid+1
    }
    return magicIndex(arr: arr, &lowerBound, &upperBound)
}



magicIndex(arr: arr)
