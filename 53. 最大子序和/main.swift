//
//  main.swift
//  53. 最大子序和
//
//  Created by yp-tc-m-2548 on 2021/3/17.
//  Copyright © 2021 KiraLayo. All rights reserved.
//

//53. 最大子序和
//给定一个整数数组 nums ，找到一个具有最大和的连续子数组（子数组最少包含一个元素），返回其最大和。
//
//
//
//示例 1：
//
//输入：nums = [-2,1,-3,4,-1,2,1,-5,4]
//输出：6
//解释：连续子数组 [4,-1,2,1] 的和最大，为 6 。
//示例 2：
//
//输入：nums = [1]
//输出：1
//示例 3：
//
//输入：nums = [0]
//输出：0
//示例 4：
//
//输入：nums = [-1]
//输出：-1
//示例 5：
//
//输入：nums = [-100000]
//输出：-100000
//
//
//提示：
//
//1 <= nums.length <= 3 * 104
//-105 <= nums[i] <= 105
//
//
//进阶：如果你已经实现复杂度为 O(n) 的解法，尝试使用更为精妙的 分治法 求解。

import Foundation

class Solution {
    func maxSubArray(_ nums: [Int]) -> Int {
//        转移方程
//        dp[i] = max(dp[i - 1] + nums[i], nums[i]);
        var lastSum = 0;
        var maxRes = nums.first!;
        for num in nums {
            lastSum = max(lastSum + num, num);
            maxRes = max(lastSum, maxRes);
        }
        return maxRes;
    }
}
