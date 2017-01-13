


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
    var pivot = (leftIndex+rightIndex)/2
    
    //Edge Case: both the left and right are the same value, iterate until leftIndex value is different
    if arr[leftIndex] == arr[rightIndex] {
        leftIndex += 1
        while leftIndex < arr.count-1 && arr[leftIndex] == arr[leftIndex-1]{
            leftIndex += 1
        }
    }
    
    //Use binary search to find the pivot point of the rotated array.
    //With this knowledge, we know which half of the array the searching value is in.
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
    
    //Perform a binary search on the appropriate sorted subarray. The pivot point is either the end or start.
    if val < arr[pivot] && val >= arr[0] {
        return binarySearch(arr: arr, val: val, 0, pivot)
    }
    else {
        print("left: \(pivot+1)")
        return binarySearch(arr: arr, val: val, pivot+1, arr.count-1)
    }
}


let arr = [1, 2, 3, 4 ,5, 0, 1]
rotatedSearch(arr: arr, val: 2)



