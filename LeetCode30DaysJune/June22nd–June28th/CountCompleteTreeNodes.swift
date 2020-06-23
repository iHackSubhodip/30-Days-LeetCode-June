/*
 Question - Count Complete Tree Nodes
 Link - > https://leetcode.com/explore/featured/card/june-leetcoding-challenge/542/week-4-june-22nd-june-28th/3369/
 */

public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
}
class Solution {
    func countNodes(_ root: TreeNode?) -> Int {
        guard let root = root else{ return 0 }
        return 1 + countNodes(root.left) + countNodes(root.right)
    }
}
