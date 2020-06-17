/*
 Question - Surrounded Regions
 Link - > https://leetcode.com/explore/featured/card/june-leetcoding-challenge/541/week-3-june-15th-june-21st/3363/
 */

class Solution {
    func solve(_ board: inout [[Character]]) {
        guard board.count > 0 && board[0].count > 0 else { return }
        let m = board.count, n = board[0].count
        for i in 0..<m{
            for j in 0..<n{
                if board[i][j] == "O" && (i == 0 || i == m - 1 || j == 0 || j == n - 1){
                    dfs(&board, m, n, i, j)
                }
            }
        }
        // print(board)
        for i in 0..<m {
            for j in 0..<n {
                    if board[i][j] == "W" {
                        board[i][j] = "O"
                    } else if board[i][j] == "O" {
                        board[i][j] = "X"
                    }
            }
        }
        // print(board)
    }
    
    func dfs(_ grid: inout [[Character]],_ m: Int,_ n: Int,_ i: Int,_ j: Int){
        guard i >= 0 && i < m && j >= 0 && j < n && grid[i][j] == "O" else {
            return
        }
        grid[i][j] = "W" // convert non surrounded with "W"
        dfs(&grid, m, n, i+1, j)
        dfs(&grid, m, n, i-1, j)
        dfs(&grid, m, n, i, j+1)
        dfs(&grid, m, n, i, j-1)
    }
}
