//
//  main.swift
//  IsToeplitzMatrix
//
//  Created by yp-tc-m-2548 on 2021/2/22.
//  Copyright © 2021 KiraLayo. All rights reserved.
//

//给你一个 m x n 的矩阵 matrix 。如果这个矩阵是托普利茨矩阵，返回 true ；否则，返回 false 。
//
//如果矩阵上每一条由左上到右下的对角线上的元素都相同，那么这个矩阵是 托普利茨矩阵 。
//
//
//
//示例 1：
//
//
//输入：matrix = [[1,2,3,4],[5,1,2,3],[9,5,1,2]]
//输出：true
//解释：
//在上述矩阵中, 其对角线为:
//"[9]", "[5, 5]", "[1, 1, 1]", "[2, 2, 2]", "[3, 3]", "[4]"。
//各条对角线上的所有元素均相同, 因此答案是 True
//
//进阶：
//
//如果矩阵存储在磁盘上，并且内存有限，以至于一次最多只能将矩阵的一行加载到内存中，该怎么办？
//如果矩阵太大，以至于一次只能将不完整的一行加载到内存中，该怎么办？
//
//来源：力扣（LeetCode）
//链接：https://leetcode-cn.com/problems/toeplitz-matrix
//著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。

import Foundation

class Solution {
    func isToeplitzMatrix(_ matrix: [[Int]]) -> Bool {
        for line in 0..<(matrix.count - 1) {
            if matrix[line][..<(matrix[line].count - 1)] != matrix[line + 1][1..<(matrix[line].count)] {
                return false;
            }
        }
        return true;
    }
}

print(Solution().isToeplitzMatrix([[1,2,3,4],[5,1,2,3],[9,5,1,2]]))
print(Solution().isToeplitzMatrix([[1,2],[2,2]]))
