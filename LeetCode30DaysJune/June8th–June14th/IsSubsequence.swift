/*
 Question - Is Subsequence
 Link - > https://leetcode.com/explore/featured/card/june-leetcoding-challenge/540/week-2-june-8th-june-14th/3355/
 */

class Solution {
    func isSubsequence(_ s: String, _ t: String) -> Bool {
        let sArray = Array(s)
        let tArray = Array(t)
        var sIndex = 0
        var tIndex = 0

        while sIndex < sArray.count && tIndex < tArray.count{
            if sArray[sIndex] == tArray[tIndex]{
                sIndex += 1
            }
            tIndex += 1
        }

        return sIndex == sArray.count
    }
}
