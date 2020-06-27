/*
 Question - Perfect Squares
 Link - > https://leetcode.com/explore/featured/card/june-leetcoding-challenge/542/week-4-june-22nd-june-28th/3373/
 */

class Solution {
    func numSquares(_ n: Int) -> Int {
        var dpTable = Array(repeating: 0, count: n+1)
        dpTable[0] = 0
        for i in 1...n{
            var minimum = Int.max, j = 1
            while i - j*j >= 0{
                minimum = min(minimum, dpTable[i - j*j] + 1)
                j += 1
            }
            dpTable[i] = minimum
        }
        return dpTable[n]
    }
}
