//: Playground - noun: a place where people can play

import UIKit

public class Heading {
    public var weight: Int
    public var text: String
    init(weight: Int, text: String) {
        self.weight = weight
        self.text = text
    }
}

public class Node {
    public var heading: Heading
    public var children = [Node]()
    weak var parent: Node?
    
    init(heading: Heading) {
        self.heading = heading
    }
    
    func addChild(child: Node) {
        children.append(child)
        child.parent = self
    }
    
    
    func insertHeadingWithWeight(heading: Heading) -> Node? {
        if heading.weight == self.heading.weight+1 {
            let node = Node(heading: heading)
            addChild(child: node)
            return self
        }
        if let last = children.last {
            if let found = last.insertHeadingWithWeight(heading: heading) {
                return found
            }
        }
        return nil
    }
    
    
    func count() -> Int? {
        
        if children.count > 0 {
            return children.count
        }
        for _ in children {
            if let  count = count() {
                return count
            }
        }
        return nil
    }
    
    func findHeadingWithWeight(weight: Int, text: String) -> Bool {
        print(heading.text)
        if self.heading.weight == weight && self.heading.text == text {
            return true
        }
        for child in children {
            if (child.findHeadingWithWeight(weight: weight, text: text)) {
                return true
            }
        }
        return false
    }
}

//Used to help debug
extension Node : CustomStringConvertible {
    
    public var description: String {
        var text = "\(self.heading.text)"
        
        if !children.isEmpty {
            text += " {" + children.map { $0.description }.joined(separator: ", ") + "} "
        }
        return text
    }
}


func outline(headings: [Heading]) -> Node {
    let root = Node(heading: Heading(weight: 0, text: ""))
    for heading in headings {
        root.insertHeadingWithWeight(heading: heading)
    }
    return root
}


var headings = [Heading]()

headings.append(Heading(weight: 1, text: "All About Birds"))
headings.append(Heading(weight: 2, text: "Kinds of Birds"))
headings.append(Heading(weight: 3, text: "The Finch"))
headings.append(Heading(weight: 3, text: "The Swan"))
headings.append(Heading(weight: 2, text: "Habitats"))
headings.append(Heading(weight: 3, text: "Wetlands"))

let root = outline(headings: headings)
print(root)

root.count()

print(root.findHeadingWithWeight(weight: 3, text: "Wetlands"))


