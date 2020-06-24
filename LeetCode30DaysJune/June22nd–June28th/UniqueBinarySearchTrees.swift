/*
 Question - Unique Binary Search Trees
 Link - > https://leetcode.com/explore/challenge/card/june-leetcoding-challenge/542/week-4-june-22nd-june-28th/3370/
 */

class Solution {
    func numTrees(_ n: Int) -> Int {
        guard n > 1 else { return 1 }
        var dp = Array(repeating: 0, count: n+1)
        dp[0] = 1
        dp[1] = 1
        for i in 2...n{
            for j in 0..<i{
                dp[i] += dp[j] * dp[i-j-1]
            }
        }
        return dp[n]
    }
}
