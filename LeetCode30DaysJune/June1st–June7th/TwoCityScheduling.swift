/*
    Question -  Two City Scheduling
    Link - > https://leetcode.com/explore/featured/card/june-leetcoding-challenge/539/week-1-june-1st-june-7th/3349/
 */

class Solution {
    func twoCitySchedCost(_ costs: [[Int]]) -> Int {
        var costs = costs.sorted(by:{ (a,b) -> Bool in
            return a[1] - a[0] >  b[1] - b[0]
        })
        var totalCost = 0;
        var N = costs.count / 2;
        for i in 0..<N {
            totalCost += costs[i][0]
            totalCost += costs[i + N][1]
        }
        
        return totalCost
    }
}
