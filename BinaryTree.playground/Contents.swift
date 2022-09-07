import UIKit

import UIKit


class BinaryNode<Element> {
    var value: Element
    var leftChild: BinaryNode?
    var rightChild: BinaryNode?
    
    init(value: Element) {
        self.value = value
    }
    
    func traverseInorder() {
        leftChild?.traverseInorder()
        print(value)
        rightChild?.traverseInorder()
    }
    
    func traversePreorder() {
        print(value)
        leftChild?.traversePreorder()
        rightChild?.traversePreorder()
    }
    
    func traversePostorder() {
        leftChild?.traversePostorder()
        rightChild?.traversePostorder()
        print(value)
    }
}

var binaryTree: BinaryNode<Int> = {
    let rootNode = BinaryNode(value: 7)
    
    let oneNode = BinaryNode(value: 1)
    let twoNode = BinaryNode(value: 2)
    let threeNode = BinaryNode(value: 3)
    let sixNode = BinaryNode(value: 6)
    let eightNode = BinaryNode(value: 8)
    let nineNode = BinaryNode(value: 9)
    
    rootNode.leftChild = oneNode
    rootNode.rightChild = twoNode
    oneNode.leftChild = threeNode
    oneNode.rightChild = eightNode
    twoNode.leftChild = nineNode
    twoNode.rightChild = sixNode
    
    return rootNode
}()

binaryTree.traverseInorder()

print("\n")

binaryTree.traversePreorder()

print("\n")

binaryTree.traversePostorder()

