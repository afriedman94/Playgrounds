//: Playground - noun: a place where people can play

import UIKit

//Given a pyramid heap like tree, compute the largest path

let tree = [1, 1, 0, 0, 0, 9]

func computePath(tree: [Int]) -> Int {
    return computePath(0, tree, 1)
}

func computePath(_ currentIndex: Int, _ tree: [Int], _ row: Int) -> Int {
    if (currentIndex >= tree.count) {
        return 0
    }
    let leftNode = currentIndex+row
    let rightNode = currentIndex+row+1
    return max(computePath(leftNode, tree, row+1), computePath(rightNode, tree, row+1)) + tree[currentIndex]
}


print(computePath(tree: tree))
