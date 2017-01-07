//: Playground - noun: a place where people can play

import UIKit

var str1 = "cat"
var str2 = "tac"

func checkPermutations(firstString: String, secondString: String) -> Bool {
    
    let str1 = Array(firstString.characters)
    let str2 = Array(secondString.characters)
    if str1.count != str2.count {
        return false
    }
    

    return false
}


func permute(chars: inout [Character], startIndex: Int, endIndex: Int)  {
    
    if startIndex == endIndex {
        print(chars)
    }
    else {
        for i in startIndex...endIndex {
            swap(&chars[startIndex], &chars[i])
            permute(chars: &chars, startIndex: startIndex+1, endIndex: endIndex)
            swap(&chars[startIndex], &chars[i])
        }
    }
    
}

func swap(_ char1: inout Character, _ char2: inout Character) {
    var temp : Character
    temp = char1
    char1 = char2
    char2 = temp
}

var str3 = Array(str1.characters)
permute(chars: &str3, startIndex: 0, endIndex: str3.count-1)
