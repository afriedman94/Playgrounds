//: Playground - noun: a place where people can play



//Runs exponentially 2^n
func f(n: Int) -> Int {
    
    if n <= 1 {
        return 1
    }
    return f(n: n-1) + f(n: n-2)
}


print(f(n: 8))



//Memoization
func allFib(n: Int) {
    var memo = Array<Int>(repeatElement(0, count: n+1))
    for i in 0..<n {
        print("\(i): \(fib(i, &memo))")
    }
}

func fib(_ n: Int, _ memo: inout [Int]) -> Int {
    if (n <= 0 ) {
        return 0
    }
    else if ( n == 1) {
        return 1
    }
    else if (memo[n] > 0)
    {
        return memo[n]
    }
    
    //Usually when you see two recursive calls in the same function, that probably means an
    //exponential time complexity is occuring. However, not in this case. 
    //We are using a memo, or an array, to store and map values with constant time comparisons.
    memo[n] = fib(n-1, &memo) + fib(n-2, &memo)
    return memo[n]
    
}

allFib(n: 8)

