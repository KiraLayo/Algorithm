//
//  main.swift
//  325. 和等于 k 的最长子数组长度
//
//  Created by yp-tc-m-2548 on 2021/4/6.
//  Copyright © 2021 KiraLayo. All rights reserved.
//
//325. 和等于 k 的最长子数组长度
//给定一个数组 nums 和一个目标值 k，找到和等于 k 的最长子数组长度。如果不存在任意一个符合要求的子数组，则返回 0。
//
//注意:
// nums 数组的总和是一定在 32 位有符号整数范围之内的。
//
//示例 1:
//
//输入: nums = [1, -1, 5, -2, 3], k = 3
//输出: 4
//解释: 子数组 [1, -1, 5, -2] 和等于 3，且长度最长。
//示例 2:
//
//输入: nums = [-2, -1, 2, 1], k = 1
//输出: 2
//解释: 子数组 [-1, 2] 和等于 1，且长度最长。
//进阶:
//你能使时间复杂度在 O(n) 内完成此题吗?
import Foundation

class Solution {
    func maxSubArrayLen(_ nums: [Int], _ k: Int) -> Int {
        // DP 前缀和
        // dp[i] = dp[i - 1]
        var maxLength = 0;
        
        var sums : [Int] = [Int](repeating: 0, count: nums.count + 1); // 前缀和因为sums[i]只与前一个sums[i-1]相关，所以可以简化使用Int
        var sumsAndIndexMap : [Int:Int] = [0:0]; // 这里初始化0：0因为在sums中sums == 0的firstIndex == 0
        for i in 1..<sums.count {
            sums[i] = sums[i-1] + nums[i-1];
            if sumsAndIndexMap[sums[i]] == nil {
                sumsAndIndexMap[sums[i]] = i;
            }
            if sumsAndIndexMap[sums[i] - k] != nil {
                maxLength = max(maxLength, i - sumsAndIndexMap[sums[i] - k]!);
            }
        }
        
        return maxLength;
    }

}


print(Solution().maxSubArrayLen([1, -1, 5, -2, 3], 3))
print(Solution().maxSubArrayLen([-2, -1, 2, 1], 1))
