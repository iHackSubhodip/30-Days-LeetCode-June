/*
    Question -  Reverse String
    Link - > https://leetcode.com/explore/featured/card/june-leetcoding-challenge/539/week-1-june-1st-june-7th/3350/
 */

class Solution {
    func reverseString(_ s: inout [Character]) {
        var first = 0
        var last = s.count - 1
        
        while first < last{
            (s[first], s[last]) = (s[last], s[first])
            first += 1
            last -= 1
        }
    }
}
