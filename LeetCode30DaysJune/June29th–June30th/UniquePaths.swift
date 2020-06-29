/*
 Question - Unique Paths
 Link - > https://leetcode.com/explore/featured/card/june-leetcoding-challenge/543/week-5-june-29th-june-30th/3375/
 */

class Solution {
    func uniquePaths(_ m: Int, _ n: Int) -> Int {
        var dp = Array(repeating: Array(repeating: 0, count: n), count: m)
        return helper(&dp, m-1, n-1)
    }
    
    func helper(_ dp: inout [[Int]],_ m: Int,_ n: Int) -> Int{
        if m < 0 || n < 0 { return 0 }
        if m == 0 || n == 0 { return 1 }
        if dp[m][n] != 0{ return dp[m][n] }
        dp[m][n] = helper(&dp, m-1, n) + helper(&dp, m, n-1)
        return dp[m][n]
    }
}
