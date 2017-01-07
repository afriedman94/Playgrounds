//: Playground - noun: a place where people can play




let string = "abcdefghijk"
let randomString = "walebston"

//Will compute in O(n)
func isUnique(string: String) -> Bool {
    
    let stringArr = Array(string.characters)
    var table = [Character: Int]()
    
    for n in 0..<stringArr.count {
        let char = stringArr[n]
        if let _ = table[char] {
            return false
        }
        table[char] = n
        
    }
    return true
}

//Will compute in O(n log n) time and does not require an additional data structure
func isUniqueSorted(string: String) -> Bool {
    
    let stringArr = Array(string.characters).sorted(by: <)
    for n in 0..<stringArr.count-1 {
        if stringArr[n] == stringArr[n+1]{
            return false
        }
    }

    return true
}

    
isUnique(string: string)
isUniqueSorted(string: randomString)