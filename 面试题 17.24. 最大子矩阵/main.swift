//
//  main.swift
//  面试题 17.24. 最大子矩阵
//
//  Created by yp-tc-m-2548 on 2021/3/18.
//  Copyright © 2021 KiraLayo. All rights reserved.
//
//面试题 17.24. 最大子矩阵
//给定一个正整数、负整数和 0 组成的 N × M 矩阵，编写代码找出元素总和最大的子矩阵。
//
//返回一个数组 [r1, c1, r2, c2]，其中 r1, c1 分别代表子矩阵左上角的行号和列号，r2, c2 分别代表右下角的行号和列号。若有多个满足条件的子矩阵，返回任意一个均可。
//
//注意：本题相对书上原题稍作改动
//
//示例：
//
//输入：
//[
//   [-1,0],
//   [0,-1]
//]
//输出：[0,1,0,1]
//解释：输入中标粗的元素即为输出所表示的矩阵
//
//
//说明：
//
//1 <= matrix.length, matrix[0].length <= 200
import Foundation

class Solution {
    func getMaxMatrix(_ matrix: [[Int]]) -> [Int] {
//        动态规划
//        这与之前的求最大子序和类似，区别是从1维提升到了2维，并且需要记录始末点，动态规矩，是考虑范围的，不要把当前的计算始末节点当成范围
//        矩阵中要求最大子序和，如果以行为准，可以通过模拟序列和可知，如果摸个节点的序列和，肯定经过了所有到此为止的列，也就是列上的元素肯定都会相加。所以可以将范围内的列加和后成为一个元素，所有列组成一个一维数组，这就降维了，之后对这个数组求最大序列和，需要注意范围，也就是涉及到的行。
        var res = [0, 0, 0, 0];
        
        let r = matrix.count;
        let c = matrix[0].count;
        
        var maxSum = matrix[0][0];
        
        for i in 0..<r {
            var lines = [Int](repeating: 0, count: c);
            // 这里注意i-j上下边
            for j in i..<r {
                //到了这里就是一般序列和
                var lastSum = 0;
                var col = 0; // 距离开始位置，在一维序列中是起始位置，在2维中是起始列的位置
                for k in 0..<c {
                    // 按照正行来计算1维数组的对应位置的元素，之后进行序列和判断
                    lines[k] += matrix[j][k];
                    if lastSum > 0 {
                        lastSum += lines[k];
                    } else {
                        col = k; // 起始列
                        lastSum = lines[k];
                    }
                    if lastSum > maxSum  {
                        maxSum = lastSum;
                        res[0] = i;
                        res[1] = col;
                        res[2] = j;
                        res[3] = k
                    }
                }
            }
        }
        return res;
    }
}

print(Solution().getMaxMatrix([
   [-1,0],
   [0,-1]
]))


print(Solution().getMaxMatrix([[9,-8,1,3,-2],[-3,7,6,-2,4],[6,-4,-4,8,-7]]))
