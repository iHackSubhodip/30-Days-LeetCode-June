/*
 Question - Dungeon Game
 Link - > https://leetcode.com/explore/featured/card/june-leetcoding-challenge/541/week-3-june-15th-june-21st/3367/
 */

class Solution {
    func calculateMinimumHP(_ dungeon: [[Int]]) -> Int {
        var nums = dungeon
            guard nums.count > 0 else {
            return 0
        }

        var row = nums.count
        var col = nums[0].count
        var dp = [[Int]](repeating: [Int](repeating: Int.max, count: col+1), count: row+1)

        dp[row][col-1] = 1
        dp[row-1][col] = 1

        for i in stride(from: row-1, to: -1, by: -1){
            for j in stride(from: col-1, to: -1, by: -1) {

                var minVal = min(dp[i][j+1], dp[i+1][j]) - nums[i][j]

                if minVal < 1 {
                    dp[i][j] = 1
                } else {
                    dp[i][j] = minVal
                }

            }
        }

        return dp[0][0]
    }
}
