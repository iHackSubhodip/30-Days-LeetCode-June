/*
 Question - Coin Change 2
 Link - > https://leetcode.com/explore/featured/card/june-leetcoding-challenge/539/week-1-june-1st-june-7th/3353/
 */

class Solution {
    func change(_ amount: Int, _ coins: [Int]) -> Int {
        guard amount > 0 else { return 1 }
        var dp = Array(repeating: 0, count: amount+1)
        dp[0] = 1
        
        for coin in coins{
            for i in 1...amount{
                if i >= coin{
                    dp[i] += dp[i-coin]
                }
            }
        }
        return dp[amount]
    }
}
