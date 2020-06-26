/*
 Question - Sum Root to Leaf Numbers
 Link - > https://leetcode.com/explore/featured/card/june-leetcoding-challenge/542/week-4-june-22nd-june-28th/3372/
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
    func sumNumbers(_ root: TreeNode?) -> Int {
       return helper(root, 0)
    }
    
    func helper(_ root: TreeNode?,_ sum: Int) -> Int{
        var result = 0
        guard let root = root else { return result }
        let val = sum * 10 + root.val
        if root.left == nil && root.right == nil{
            return val
        }
        return helper(root.left, val) + helper(root.right, val)
    }
}
