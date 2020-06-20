/*
 Question - Permutation Sequence
 Link - > https://leetcode.com/explore/featured/card/june-leetcoding-challenge/541/week-3-june-15th-june-21st/3366/
 */

class Solution {
    var count = 0
    func getPermutation(_ n: Int, _ k: Int) -> String {
        var arr:[Int] = [], list:[Int] = []
        for i in 1...n{
            arr.append(i)
        }
        var used = Array(repeating: false, count: arr.count)
        return helper(arr, &list, k, &used)
    }
    
    func helper(_ arr:[Int], _ list:inout[Int], _ k: Int, _ used: inout [Bool]) -> String{
        if arr.count == list.count{
            count += 1
            var s = ""
            if count == k{
                for item in list{
                    s += item.description
                }
            }
            return s
        }
        for i in 0..<arr.count{
            let item = arr[i]
            if used[i] == true { continue }
            list.append(item)
            used[i] = true
            let res = helper(arr, &list, k, &used)
            if !res.isEmpty {return res}
            list.removeLast()
            used[i] = false
        }
        return ""
    }
}
