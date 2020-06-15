/*
 Question - Search in a Binary Search Tree
 Link - > https://leetcode.com/explore/featured/card/june-leetcoding-challenge/541/week-3-june-15th-june-21st/3361/
 */

public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init() { self.val = 0; self.left = nil;self.right = nil; }
    public init(_ val: Int) { self.val = val;self.left = nil; self.right = nil; }
    public init(_ val: Int, _ left: TreeNode?, _right: TreeNode?) {
        self.val = val
        self.left = left
        self.right = right
    }
}

class Solution {
    func searchBST(_ root: TreeNode?, _ val: Int) -> TreeNode? {
        if root == nil || root!.val == val { return root }
        return val < root!.val ? searchBST(root!.left, val) : searchBST(root!.right, val)
    }
}
