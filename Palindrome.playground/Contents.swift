


//: Determine if a word is a palindrome in a single pass.

import UIKit

func checkPalindrome(word: String) -> Bool {
    
    var forwards = 0
    var backwards = 0
    var leftIndex = 1
    var rightIndex = word.characters.count
    
    for char  in word.utf8 {
        let string  = String(char)
        let charVal: Int = Int(string)!
        forwards += charVal * leftIndex
        backwards += charVal * rightIndex
        
        leftIndex += 1
        rightIndex -= 1
    }
    
    return forwards == backwards
}

func pali(word: String) -> Bool{
    let arrString = Array(word.characters)
    var leftIndex = 0
    var rightIndex = word.characters.count-1
    
    for _ in arrString {
        if arrString[leftIndex] != arrString[rightIndex] {
            return false
        }
        leftIndex += 1
        rightIndex -= 1
    }
    return true
}


var word = "No lemon, no melon"
word = word.replacingOccurrences(of: " ", with: "").lowercased()
checkPalindrome(word: word)

pali(word: word)

