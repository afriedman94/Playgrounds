

//: A child is running up a staircase with n steps and can hop either 1 step, 2 steps, or 3 steps at a time. Implement a method to count how many possible ways the child can run up the stairs.

import UIKit

func tripleStep(steps: Int) -> Int {
    var memo = [Int: Int]()
    return tripleStep(steps: steps, memo: &memo)
}

//memoization
func tripleStep(steps: Int, memo: inout [Int: Int]) -> Int {
    
    if steps < 0 { return 0 }
    if (steps == 0) {
        return 1
    }
    
    if memo[steps] == nil {
       memo[steps] = tripleStep(steps: steps-1, memo: &memo) + tripleStep(steps: steps-2, memo: &memo) + tripleStep(steps: steps-3, memo: &memo)
    }
    return memo[steps]!
}

func dynamicTripleStep(steps: Int) -> Int {
    if steps < 3 {
        return steps
    }
    if steps == 3 {
        return 4
    }
    var a = 1
    var b = 2
    var c = 4
    var tot: Int = 0
    for _ in 3..<steps {
        tot = a + b + c
        a = b
        b = c
        c = tot
    }
    return tot
}


print(tripleStep(steps: 60))
print(dynamicTripleStep(steps: 60))
