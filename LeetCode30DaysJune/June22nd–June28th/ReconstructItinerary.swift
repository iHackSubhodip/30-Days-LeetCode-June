/*
 Question - Reconstruct Itinerary
 Link - > https://leetcode.com/explore/featured/card/june-leetcoding-challenge/542/week-4-june-22nd-june-28th/3374/
 */

class Solution {
    func findItinerary(_ tickets: [[String]]) -> [String] {
        guard tickets.count > 0 else { return [] }
        let sortedTickets = tickets.sorted{ (first, second) -> Bool in
            return first[1] < second[1]
        }
        var graph: [String: [String]] = [:]
        for ticket in sortedTickets{
            let from = ticket[0]
            let to = ticket[1]
            if graph[from] == nil{
               graph[from] = [to]
            }else{
                graph[from]!.append(to)
            }
        }
        var result: [String] = []
        dfs(&graph, "JFK", &result)
        return result.reversed()
    }
    
    func dfs(_ graph: inout [String: [String]],_ ticket: String,_ result: inout [String]){
        if graph[ticket] != nil{
            while !graph[ticket]!.isEmpty{
                dfs(&graph, graph[ticket]!.removeFirst(), &result)
            }
        }
        result.append(ticket)
    }
}
