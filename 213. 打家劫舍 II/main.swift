//
//  main.swift
//  213. 打家劫舍 II
//
//  Created by yp-tc-m-2548 on 2021/3/29.
//  Copyright © 2021 KiraLayo. All rights reserved.
//
//213. 打家劫舍 II
//你是一个专业的小偷，计划偷窃沿街的房屋，每间房内都藏有一定的现金。这个地方所有的房屋都 围成一圈 ，这意味着第一个房屋和最后一个房屋是紧挨着的。同时，相邻的房屋装有相互连通的防盗系统，如果两间相邻的房屋在同一晚上被小偷闯入，系统会自动报警 。
//
//给定一个代表每个房屋存放金额的非负整数数组，计算你 在不触动警报装置的情况下 ，能够偷窃到的最高金额。
//
//
//
//示例 1：
//
//输入：nums = [2,3,2]
//输出：3
//解释：你不能先偷窃 1 号房屋（金额 = 2），然后偷窃 3 号房屋（金额 = 2）, 因为他们是相邻的。
//示例 2：
//
//输入：nums = [1,2,3,1]
//输出：4
//解释：你可以先偷窃 1 号房屋（金额 = 1），然后偷窃 3 号房屋（金额 = 3）。
//     偷窃到的最高金额 = 1 + 3 = 4 。
//示例 3：
//
//输入：nums = [0]
//输出：0
//
//
//提示：
//
//1 <= nums.length <= 100
//0 <= nums[i] <= 1000

import Foundation

class Solution {
    func rob(_ nums: [Int]) -> Int {
        // DP
        // look up 198
        // dp[i] = max(dp[i-2] + nums[i], dp[i-1])
        // situation:
        // 1:1...
        // 2:0...n-1
        if nums.count == 0 {
            return 0
        }
        if nums.count == 1 {
            return nums[0];
        }
        var pre = 0;
        var cur = 0;
        var res1 = 0;
        for i in 0..<nums.count-1 {
            let temp = cur;
            cur = max(pre + nums[i], cur);
            pre = temp;
        }
        res1 = cur;
        pre = 0;
        cur = 0;
        var res2 = 0;
        for i in 1..<nums.count {
            let temp = cur;
            cur = max(pre + nums[i], cur);
            pre = temp;
        }
        res2 = cur;
        return max(res2, res1);
    }
}

print(Solution().rob([2,3,2]))
print(Solution().rob([1,2,3,1]))
print(Solution().rob([1,2]))
print(Solution().rob([200,3,140,20,10]))
