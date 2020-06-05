/*
    Question - Random Pick with Weight
    Link - > https://leetcode.com/explore/featured/card/june-leetcoding-challenge/539/week-1-june-1st-june-7th/3351/
 */

class Solution {

    var sums: [Int]
    init(_ w: [Int]) {
        sums = w
        for i in 1..<w.count {
            sums[i] += sums[i-1]
        }
    }

    func pickIndex() -> Int {
        
        let idx = Int.random(in: 1...sums[sums.count-1])
        var l = 0, r = sums.count - 1
        
        while l <= r {
            
            let m = (l+r)/2
            
            if sums[m] == idx {
                return m
            } else if sums[m] < idx {
                l = m + 1
            } else {
                r = m - 1
            }
        }
        
        return l
    }
}
