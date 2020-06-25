/*
 Question - Find the Duplicate Number
 Link - > https://leetcode.com/explore/challenge/card/june-leetcoding-challenge/542/week-4-june-22nd-june-28th/3371/
 */

class Solution {
    func findDuplicate(_ nums: [Int]) -> Int {
        var slow = nums[0], fast = nums[nums[0]]
        
        while slow != fast{
            slow = nums[slow]
            fast = nums[nums[fast]]
        }
        
        fast = 0
        
        while slow != fast{
            fast = nums[fast]
            slow = nums[slow]
        }
        
        return fast
    }
}
