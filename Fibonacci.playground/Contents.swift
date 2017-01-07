//: Playground - noun: a place where people can play

import UIKit


//Fib with memoization
func fibonacci(_ num: Int) {
    var memo = Array<Int>(repeatElement(0, count: num+1))
    for i in 0..<num {
        print("\(i): \(fibonacci(i, &memo))")
    }
}

func fibonacci(_ num: Int, _ memo: inout [Int]) -> Int {
    
    if (num == 0 || num == 1) { return num }
    if memo[num] == 0 {
        memo[num] = fibonacci(num-1, &memo) + fibonacci(num-2, &memo)
    }
    return memo[num]
    
}

//Bad recursive fib
func fib (_ num: Int) -> Int {
    if num == 0 || num == 1 { return num }
    return fib(num-1) + fib(num-2)
}

//dynamic implementation of fib
func dynamicFib(_ num: Int) -> Int {
    if (num == 0) { return 0 }
    var a = 0
    var b = 1
    var c: Int = 0
    for _ in 2..<num {
        c = a + b
        a = b
        b = c
    }
    return c
    
}

dynamicFib(50)
