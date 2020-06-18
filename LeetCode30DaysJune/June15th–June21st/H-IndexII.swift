/*
 Question - H-Index II
 Link - > https://leetcode.com/explore/featured/card/june-leetcoding-challenge/541/week-3-june-15th-june-21st/3364/
 */

class Solution {
    func hIndex(_ citations: [Int]) -> Int {
        let count = citations.count
        var left = 0, right = citations.count - 1, middle = 0
        
        while left <= right{
            middle = left + (right - left) / 2
            
            if citations[middle] == count - middle{
                return citations[middle]
            }else if citations[middle] > count - middle{
                right = middle - 1
            }else{
                left = middle + 1
            }
        }
        
        return count - (right + 1)
    }
}
