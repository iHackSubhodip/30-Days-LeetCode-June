/*
 Question - Search Insert Position
 Link - > https://leetcode.com/explore/featured/card/june-leetcoding-challenge/540/week-2-june-8th-june-14th/3356/
 */

class Solution {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        var start = 0, end = nums.count
        
        while start < end{
            var mid = start + (end - start) / 2
            
            if nums[mid] > target{
                end = mid
            }else if nums[mid] < target{
                start = mid + 1
            }else{
                return mid
            }
        }
        
        return start
    }
}
