/*#15
Lattice paths.
https://projecteuler.net/problem=15
*/

import Foundation
//n*n grid will have n+1 * n+1 lattices
var grid = Array(repeating:Array(repeating:Int(),count:21), count:21)
/*
As we can only move ↓ →, possible paths from lattices on edges would be 1
*/
for i in 0...20 {
	grid[i][0] = 1
	grid [0][i] = 1
}

// For remaining lattices the paths would be sum of prevoius point paths
for i in 1...20 {
	for j in 1...20 {
		grid[i][j] = grid[i-1][j] + grid[i][j-1]
	}
}
print(grid[20][20])
