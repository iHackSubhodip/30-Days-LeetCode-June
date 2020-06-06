/*
    Question - Queue Reconstruction by Height
    Link - > https://leetcode.com/explore/featured/card/june-leetcoding-challenge/539/week-1-june-1st-june-7th/3352/
 */

class Solution {
    func reconstructQueue(_ people: [[Int]]) -> [[Int]] {
        var result: [[Int]] = []
        let sortedArray = people.sorted(by:{
            if $0[0] == $1[0]{
                return $0[1] < $1[1]
            }
            return $0[0] > $1[0]
        })
        for item in sortedArray{
            result.insert(item, at: item[1])
        }
        return result
    }
}
