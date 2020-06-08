/*
 Question - Power of Two
 Link - > https://leetcode.com/explore/featured/card/june-leetcoding-challenge/540/week-2-june-8th-june-14th/3354/
 */

class Solution {
    func isPowerOfTwo(_ n: Int) -> Bool {
         guard n > 0 else {
            return false
        }
        
        return n & (n - 1) == 0
    }
}
