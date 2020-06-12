/*
 Question - Insert Delete GetRandom O(1)
 Link - > https://leetcode.com/explore/featured/card/june-leetcoding-challenge/540/week-2-june-8th-june-14th/3358/
 */

class RandomizedSet {

    var numsToIndex: [Int: Int]
    var nums: [Int]
    
    /** Initialize your data structure here. */
    init() {
        numsToIndex = [Int: Int]()
        nums = [Int]()
    }
    
    /** Inserts a value to the set. Returns true if the set did not already contain the specified element. */
    func insert(_ val: Int) -> Bool {
        if let _ = numsToIndex[val]{
            return false
        }else{
            numsToIndex[val] = nums.count
            nums.append(val)
            return true
        }
    }
    
    /** Removes a value from the set. Returns true if the set contained the specified element. */
    func remove(_ val: Int) -> Bool {
        if let index = numsToIndex[val], let last = nums.last{
            numsToIndex[last] = index
            numsToIndex[val] = nil
            nums.swapAt(index, nums.count - 1)
            nums.removeLast()
            return true
        }else{
            return false
        }
    }
    
    /** Get a random element from the set. */
    func getRandom() -> Int {
        guard let element = nums.randomElement() else{
            fatalError("Empty Set")
        }
        return element
    }
}
