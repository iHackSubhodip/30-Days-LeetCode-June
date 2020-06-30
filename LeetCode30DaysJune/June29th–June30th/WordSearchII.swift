/*
 Question - Word Search II
 Link - > https://leetcode.com/explore/featured/card/june-leetcoding-challenge/543/week-5-june-29th-june-30th/3376/
 */

class Solution {
    func findWords(_ board: [[Character]], _ words: [String]) -> [String] {
        let trieRoot = buildTrie(words)
        var board = board, result = Set<String>()
        for i in 0..<board.count{
            for j in 0..<board[i].count{
                dfs(&board, i, j, &result, trieRoot)
            }
        }
        return Array(result)
    }
    
    func dfs(_ board: inout [[Character]],_ i: Int,_ j: Int,_ result: inout Set<String>,_ trieNode: TrieNode){
        if let word = trieNode.word{
            result.insert(word)
        }
        
        guard i >= 0 && j >= 0 && i < board.count && j < board[i].count else { return }
        guard board[i][j] != "#" else { return }
        
        let char = board[i][j]
        guard let nextTrieNode = trieNode.children[char] else { return }
        var board = board
        board[i][j] = "#"
        for (nexti, nextj) in [(i-1, j), (i+1, j), (i, j-1), (i, j+1)]{
            dfs(&board, nexti, nextj, &result, nextTrieNode)
        }
        board[i][j] = char
    }
    
    class TrieNode{
        var word: String?
        var children = [Character: TrieNode]()
    }
    
    func buildTrie(_ words: [String]) -> TrieNode{
        let root = TrieNode()
        for word in words{
            var node = root
            for char in word{
                if node.children[char] == nil{
                    node.children[char] = TrieNode()
                }
                node = node.children[char]!
            }
            node.word = word
        }
        return root
    }
}
