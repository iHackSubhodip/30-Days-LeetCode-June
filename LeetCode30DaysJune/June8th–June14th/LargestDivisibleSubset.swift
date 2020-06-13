/*
 Question - Largest Divisible Subset
 Link - > https://leetcode.com/explore/featured/card/june-leetcoding-challenge/540/week-2-june-8th-june-14th/3359/
 */

class Solution {
    func largestDivisibleSubset(_ nums: [Int]) -> [Int] {
        if nums.count < 2{ return nums }
        let nums = nums.sorted()
        var result = [Int](), dp = Array(repeating: 0, count: nums.count), maxIndex = 0, temp = 0, current = 0
        for i in 1..<nums.count{
            for j in stride(from: i-1,through: 0,by: -1){
                if nums[i] % nums[j] == 0{
                    dp[i] = max(dp[i], dp[j] + 1)
                }
            }
        }
        
        for i in 1..<nums.count{
            maxIndex = dp[i] > dp[maxIndex] ? i : maxIndex
        }
        
        temp = nums[maxIndex]
        current = dp[maxIndex]
        for i in stride(from: maxIndex, through: 0, by: -1) {
            if temp % nums[i] == 0 && dp[i] == current {
                result.append(nums[i])
                temp = nums[i]
                current -= 1
            }
        }
        return result
    }
}
