//
//  main.swift
//  918. 环形子数组的最大和
//
//  Created by yp-tc-m-2548 on 2021/3/18.
//  Copyright © 2021 KiraLayo. All rights reserved.
//
//
//918. 环形子数组的最大和
//给定一个由整数数组 A 表示的环形数组 C，求 C 的非空子数组的最大可能和。
//
//在此处，环形数组意味着数组的末端将会与开头相连呈环状。（形式上，当0 <= i < A.length 时 C[i] = A[i]，且当 i >= 0 时 C[i+A.length] = C[i]）
//
//此外，子数组最多只能包含固定缓冲区 A 中的每个元素一次。（形式上，对于子数组 C[i], C[i+1], ..., C[j]，不存在 i <= k1, k2 <= j 其中 k1 % A.length = k2 % A.length）
//
//
//
//示例 1：
//
//输入：[1,-2,3,-2]
//输出：3
//解释：从子数组 [3] 得到最大和 3
//示例 2：
//
//输入：[5,-3,5]
//输出：10
//解释：从子数组 [5,5] 得到最大和 5 + 5 = 10
//示例 3：
//
//输入：[3,-1,2,-1]
//输出：4
//解释：从子数组 [2,-1,3] 得到最大和 2 + (-1) + 3 = 4
//示例 4：
//
//输入：[3,-2,2,-3]
//输出：3
//解释：从子数组 [3] 和 [3,-2,2] 都可以得到最大和 3
//示例 5：
//
//输入：[-2,-3,-1]
//输出：-1
//解释：从子数组 [-1] 得到最大和 -1
//
//
//提示：
//
//-30000 <= A[i] <= 30000
//1 <= A.length <= 30000

import Foundation

class Solution {
    func maxSubarraySumCircular(_ A: [Int]) -> Int {
//        动态规划
//        考虑两种情况：
//        1. 最大和在数组内部
//        2. 最大和在环上
//        情况1，可以根据求最大子序和来走，也就是Kadane
//        情况2，可以考虑求出数组内的最小子序和，再用整体sum减去最小，求最小子序和的区间不应当包含数组头尾，因为在环上其必然在最后的最大自序内。[1, length-2], 也就是求Kadane变种min
        if A.count == 1 {
            return A[0];
        }
        var sum = 0;
        var maxSum = A[0];
        var lastMax = 0;
        
        for num in A {
            sum += num;
            lastMax = max(lastMax + num, num);
            maxSum = max(maxSum, lastMax);
        }
        
        var minSum = 0;
        var lastMin = 0;
        for i in 1..<A.count - 1 {
            lastMin = min(lastMin + A[i], A[i]);
            minSum = min(lastMin, minSum);
        }
        
        return max(maxSum,sum-minSum);
    }
}

//print(Solution().maxSubarraySumCircular([1,-2,3,-2]));
print(Solution().maxSubarraySumCircular([5,-3,5]));
print(Solution().maxSubarraySumCircular([-3]));
