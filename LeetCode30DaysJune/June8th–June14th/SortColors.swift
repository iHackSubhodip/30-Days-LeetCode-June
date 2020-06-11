/*
 Question - Sort Colors
 Link - > https://leetcode.com/explore/featured/card/june-leetcoding-challenge/540/week-2-june-8th-june-14th/3357/
 */

class Solution {
    func sortColors(_ nums: inout [Int]) {
        var low = 0, high = nums.count - 1, mid = 0
        while mid <= high{
            switch nums[mid]{
                case 0:
                    (nums[low], nums[mid]) = (nums[mid], nums[low])
                    low += 1
                    mid += 1
                case 1:
                    mid += 1
                
                case 2:
                    (nums[mid], nums[high]) = (nums[high], nums[mid])
                    high -= 1
                default:
                    break
            }
        }
    }
}
