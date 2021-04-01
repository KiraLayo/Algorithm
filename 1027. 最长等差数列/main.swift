//
//  main.swift
//  1027. 最长等差数列
//
//  Created by yp-tc-m-2548 on 2021/4/1.
//  Copyright © 2021 KiraLayo. All rights reserved.
//
//1027. 最长等差数列
//给定一个整数数组 A，返回 A 中最长等差子序列的长度。
//
//回想一下，A 的子序列是列表 A[i_1], A[i_2], ..., A[i_k] 其中 0 <= i_1 < i_2 < ... < i_k <= A.length - 1。并且如果 B[i+1] - B[i]( 0 <= i < B.length - 1) 的值都相同，那么序列 B 是等差的。
//
//
//
//示例 1：
//
//输入：[3,6,9,12]
//输出：4
//解释：
//整个数组是公差为 3 的等差数列。
//示例 2：
//
//输入：[9,4,7,2,10]
//输出：3
//解释：
//最长的等差子序列是 [4,7,10]。
//示例 3：
//
//输入：[20,1,15,3,10,5,8]
//输出：4
//解释：
//最长的等差子序列是 [20,15,10,5]。
//
//
//提示：
//
//2 <= A.length <= 2000
//0 <= A[i] <= 10000

import Foundation

class Solution {
    func longestArithSeqLength(_ A: [Int]) -> Int {
//        等差可以是负数
//        DP
//        动态规划：
//        1、最优子结构：每个子串可以通过遍历得到，每种等差值对应的最大序列长度
//        2、
//        A[i] = A[i-1] + A[i-1] - A[i-2] = 2*A[i-1] - A[i-2];
//        (diff, i) -> (i, j)
//        转移方程1：dp[i * N + j] = dp[diff * N + i] + 1;

        let N = A.count;
        if N < 3 {
            return N;
        }
        var map:[Int:Int] = [:];
        var maxLen = 0;
        var dp:[Int:Int] = [:];
        for i in 0..<N {
            for j in i+1..<N {
                let arith = A[i] - (A[j] - A[i]);
                if let arithIndex = map[arith] {
                    dp[i*N + j] = dp[arithIndex * N + i, default: 2] + 1;
                    maxLen = max(dp[i*N + j, default: 2], maxLen);
                }
            }
            map[A[i]] = i;
        }
        return maxLen;
    }
}

print(Solution().longestArithSeqLength([3,6,9,12]))
print(Solution().longestArithSeqLength([9,4,7,2,10]))
print(Solution().longestArithSeqLength([20,1,15,3,10,5,8]))
