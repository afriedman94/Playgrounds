//: Playground - noun: a place where people can play

import UIKit


//Remove duplicates from an array
var str = "Hello, playground"
let chars = Array(str.characters)
let set : Set = Set(chars)
print(set.filter{ $0 != "g"})


//Remove spaces from a string
let trimmed = str.replacingOccurrences(of: " ", with: "")
print(trimmed)


//Reverse a string using swift library functions.
var rev = "Reverse"
let arrayRev = Array(rev.characters)
let reversedArray = arrayRev.reversed()
let backToString = String(reversedArray)

//Reverse string using insert method.
var z = [Character]()
for char in arrayRev {
    z.insert(char, at: 0)
}
print(String(z))


//Reverse a sentence 
var sentence = "This is a sentence that will be reversed"
var sentArr = sentence.components(separatedBy: .whitespaces)
var q = [String]()
for string in sentArr {
    q.insert(string, at: 0)
}
var zz = ""
for str in q {
    zz += str + " "
}
print(zz)











