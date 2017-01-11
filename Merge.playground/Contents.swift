

// Create a method to merge two sorted arrays

var array1 = [1, 3, 6, 7, 8, 9, 12]
var array2 = [2, 2, 5, 8, 10, 11, 13, 14]


func merge(_ array1: [Int], _ array2: [Int]) -> [Int] {
    
    var array1Index = 0
    var array2Index = 0
    var mergedArray = [Int]()
    
    while (array1Index < array1.count && array2Index < array2.count) {
        if array1[array1Index] <= array2[array2Index] {
            mergedArray.append(array1[array1Index])
            array1Index += 1
        }
        else {
             mergedArray.append(array2[array2Index])
            array2Index += 1
        }
    }
    
    mergedArray += array1.count > array2.count ?
        Array(array1[array1Index..<array1.count]) :
        Array(array2[array2Index..<array2.count])
    
    
    return mergedArray
}


merge(array1, array2)