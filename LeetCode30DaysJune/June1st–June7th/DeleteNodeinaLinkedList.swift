/*
 Question -  Delete Node in a Linked List
 Link - > https://leetcode.com/explore/challenge/card/june-leetcoding-challenge/539/week-1-june-1st-june-7th/3348/
 */

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}


class Solution {
    func deleteNode(_ node: ListNode?) {
        node?.val = node?.next?.val ?? -1
        node?.next = node?.next?.next
    }
}
