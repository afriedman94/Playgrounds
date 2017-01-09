


// Write a method to return all subsets of a set


//Recursive
func powerSet(set: [Int], index: Int) -> [[Int]] {
    var subsets = [[Int]]()
    if index < 0 {
        subsets.append([Int]())
    }
    else {
        subsets = powerSet(set: set, index: index-1)
        let item = set[index]
        var moreSubs = [[Int]]()
        
        for subset in subsets {
            var newSubset = [Int]()
            newSubset += subset
            newSubset.append(item)
            moreSubs.append(newSubset)
        }
        subsets += moreSubs
    }
    
    return subsets
}

//Dynamic
func powerSet(set: [Int]) -> [[Int]] {
    var allSets = [[Int]]()
    allSets.append([Int]())
    
    for n in 0..<set.count {
        for i in 0..<allSets.count {
            let value = set[n]
            var newSub = [Int]()
            
            for val in allSets[i] {
                newSub.append(val)
            }
            
            newSub.append(value)
            allSets.append(newSub)
        }
    }
    return allSets
}

var arr = [1, 2, 3, 4]
powerSet(set: arr, index: arr.count-1)
