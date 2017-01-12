


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


var word = "No lemon, no melon"
word = word.replacingOccurrences(of: " ", with: "").lowercased()
checkPalindrome(word: word)

