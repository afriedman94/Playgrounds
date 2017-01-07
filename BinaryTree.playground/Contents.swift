//: Playground - noun: a place where people can play

import UIKit

class Node {
    public var data: Int
    public var leftChild: Node?
    public var rightChild: Node?
    
    public init(data: Int) {
        self.data = data
    }
    
    public func insert(_ data: Int) {
        if (data > self.data) {
            if let right = self.rightChild {
                right.insert(data)
            }
            else {
                rightChild = Node(data: data)
            }
        }
        else {
            if let left = self.leftChild {
                left.insert(data)
            }
            else {
                leftChild = Node(data: data)
            }
        }
    }
}

extension Node: CustomStringConvertible {
    public var description: String {
        var s = ""
        if let leftChild = leftChild {
            s += "(\(leftChild.description)) <- "
        }
        s += "\(data)"
        if let right = rightChild {
            s += " -> (\(right.description))"
        }
        return s
    }
}

func inOrder(_ node: Node?) {
    if let node = node {
        inOrder(node.leftChild)
        print("\(node.data)" )
        inOrder(node.rightChild)
    }
}


let root = Node(data: 5)
root.insert(10)
root.insert(12)
root.insert(3)
root.insert(1)
root.insert(7)
root.insert(4)

print(root)
print(inOrder(root))
