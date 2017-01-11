


//: Rotated Search

// Given an array that has been rotated n times. Create an algorithm to find the index of a given
// number. Assume that the orignal array was sorted in ascending order.


func binarySearch(arr: [Int], val: Int, _ low: Int, _ high: Int) -> Int {
    
    var left = low
    var right = high
    var middle: Int
    
    while left <= right {
        middle = (left+right)/2
        if arr[middle] == val {
            return middle
        }
        else if arr[middle] > val {
            right = middle-1
        }
        else {
            left = middle+1
        }
    }
    return -1
}

func rotatedSearch(arr: [Int], val: Int) -> Int {
    var leftIndex = 0
    var rightIndex = arr.count-1
    var pivot = 0
    
    while arr[leftIndex] > arr[rightIndex] {
        
        pivot = (leftIndex+rightIndex)/2
        if arr[pivot] == val { return pivot }
        
        if arr[leftIndex] > arr[pivot] {
            rightIndex = pivot
        }
        else {
            leftIndex = pivot+1
        }
    }
    
    if val < arr[pivot] && val >= arr[0] {
        return binarySearch(arr: arr, val: val, 0, pivot)
    }
    else {
        return binarySearch(arr: arr, val: val, pivot+1, arr.count-1)
    }
}

let arr = [14, 15, 17, 19, 23, 26, 29, 31, 5, 7, 10, 12]
rotatedSearch(arr: arr, val: 7)



