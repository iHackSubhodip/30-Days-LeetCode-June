/*
 Question - Single Number II
 Link - > https://leetcode.com/explore/featured/card/june-leetcoding-challenge/542/week-4-june-22nd-june-28th/3368/
 */

class Solution {
    func singleNumber(_ nums: [Int]) -> Int {
        var ones = 0, twos = 0
        for num in nums{
            ones = (ones ^ num) & ~twos
            twos = (twos ^ num) & ~ones
        }
        return ones
    }
}
