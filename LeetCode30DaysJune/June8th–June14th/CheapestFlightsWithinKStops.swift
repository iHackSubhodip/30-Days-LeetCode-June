/*
 Question - Cheapest Flights Within K Stops
 Link - > https://leetcode.com/explore/featured/card/june-leetcoding-challenge/540/week-2-june-8th-june-14th/3360/
 */

class Solution {
    typealias element = (city: Int, stops: Int, runningCost: Int)

    func findCheapestPrice(_ n: Int, _ flights: [[Int]], _ src: Int, _ dst: Int, _ K: Int) -> Int {
        var graph = [Int:[(Int, Int)]]()

        for flight in flights {
            graph[flight[0], default: []].append((flight[1], flight[2]))
        }

        var queue = [element]()
        queue.append((city: src, stops: 0, runningCost: 0))

        var minCost = Int.max

        while !queue.isEmpty {
            let (city, stops, runningCost) = queue.removeFirst()

            if city == dst {
                minCost = min(minCost, runningCost)
                continue
            }

            if stops > K || runningCost > minCost {
                continue
            }

            for (nextCity, flightCost) in graph[city] ?? [] {
                queue.append((nextCity, stops + 1, runningCost + flightCost))
            }
        }

        return minCost != Int.max ? minCost : -1
    }
}
