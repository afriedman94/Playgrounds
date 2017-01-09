

// Merge Sort implementation in Swift


func mergeSort(_ array: [Int]) -> [Int] {

    guard array.count > 1 else { //If the array is empty or has a single element, it is sorted. Return it
        return array
    }
    
    let middleIndex = array.count/2
    print("whole array: \(array)")
    let leftArray = mergeSort(Array(array[0..<middleIndex]))
    print("left array: \(leftArray)")
    let rightArray = mergeSort(Array(array[middleIndex..<array.count]))
    print("right array: \(rightArray)")
    let merged = merge(leftPile: leftArray, rightPile: rightArray)
    print("merged array: \(merged)")
    return merged
}

func merge(leftPile: [Int], rightPile: [Int]) -> [Int] {
    
    var leftIndex = 0
    var rightIndex = 0
    
    var orderedPile = [Int]()
    
    while (leftIndex < leftPile.count && rightIndex < rightPile.count) {
        if (leftPile[leftIndex] <= rightPile[rightIndex]) {
            orderedPile.append(leftPile[leftIndex])
            leftIndex += 1
        }
        else if (leftPile[leftIndex] > rightPile[rightIndex]) {
            orderedPile.append(rightPile[rightIndex])
            rightIndex += 1
        }
        else {
            orderedPile.append(leftPile[leftIndex])
            leftIndex += 1
            orderedPile.append(rightPile[rightIndex])
            rightIndex += 1
        }
    }
    
    while leftIndex < leftPile.count {
        orderedPile.append(leftPile[leftIndex])
        leftIndex += 1
    }
    
    while rightIndex < rightPile.count {
        orderedPile.append(rightPile[rightIndex])
        rightIndex += 1
    }
    
    return orderedPile
}


var unsortedArray = [23, 19, 38, 3, 39, 184, 9, 19, 42, 26, 10, 100, 78]
mergeSort(unsortedArray)

