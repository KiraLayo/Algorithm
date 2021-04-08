//
//  main.swift
//  304. 二维区域和检索 - 矩阵不可变
//
//  Created by yp-tc-m-2548 on 2021/4/6.
//  Copyright © 2021 KiraLayo. All rights reserved.
//
//304. 二维区域和检索 - 矩阵不可变
//给定一个二维矩阵，计算其子矩形范围内元素的总和，该子矩阵的左上角为 (row1, col1) ，右下角为 (row2, col2) 。
//
//Range Sum Query 2D
//上图子矩阵左上角 (row1, col1) = (2, 1) ，右下角(row2, col2) = (4, 3)，该子矩形内元素的总和为 8。
//
//
//
//示例：
//
//给定 matrix = [
//  [3, 0, 1, 4, 2],
//  [5, 6, 3, 2, 1],
//  [1, 2, 0, 1, 5],
//  [4, 1, 0, 1, 7],
//  [1, 0, 3, 0, 5]
//]
//
//sumRegion(2, 1, 4, 3) -> 8
//sumRegion(1, 1, 2, 2) -> 11
//sumRegion(1, 2, 2, 4) -> 12
//
//
//提示：
//
//你可以假设矩阵不可变。
//会多次调用 sumRegion 方法。
//你可以假设 row1 ≤ row2 且 col1 ≤ col2 。
import Foundation

class NumMatrix {
    var dp:[[Int]]
    init(_ matrix: [[Int]]) {
        let rowNum = matrix.count;
        let colNum = matrix[0].count;
        dp = [[Int]](repeating: [Int](repeating: 0, count: colNum + 1), count: rowNum);
        for r in 0..<rowNum {
            for c in 1..<colNum {
                dp[r][c] = dp[r][c-1] + matrix[r][c-1];
            }
        }
    }
    
    func sumRegion(_ row1: Int, _ col1: Int, _ row2: Int, _ col2: Int) -> Int {
        var sum = 0;
        for r in row1...row2 {
            sum += dp[r][col2 + 1] - dp[r][col1];
        }
        return sum;
    }
}

/**
 * Your NumMatrix object will be instantiated and called as such:
 * let obj = NumMatrix(matrix)
 * let ret_1: Int = obj.sumRegion(row1, col1, row2, col2)
 */

print(NumMatrix([
  [3, 0, 1, 4, 2],
  [5, 6, 3, 2, 1],
  [1, 2, 0, 1, 5],
  [4, 1, 0, 1, 7],
  [1, 0, 3, 0, 5]
    ]).sumRegion(2, 1, 4, 3))
print(NumMatrix([
[3, 0, 1, 4, 2],
[5, 6, 3, 2, 1],
[1, 2, 0, 1, 5],
[4, 1, 0, 1, 7],
[1, 0, 3, 0, 5]
  ]).sumRegion(1, 1, 2, 2))
print(NumMatrix([
[3, 0, 1, 4, 2],
[5, 6, 3, 2, 1],
[1, 2, 0, 1, 5],
[4, 1, 0, 1, 7],
[1, 0, 3, 0, 5]
  ]).sumRegion(1, 2, 2, 4))
