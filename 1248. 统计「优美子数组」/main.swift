//
//  main.swift
//  1248. 统计「优美子数组」
//
//  Created by yp-tc-m-2548 on 2021/4/9.
//  Copyright © 2021 KiraLayo. All rights reserved.
//
//1248. 统计「优美子数组」
//给你一个整数数组 nums 和一个整数 k。
//
//如果某个 连续 子数组中恰好有 k 个奇数数字，我们就认为这个子数组是「优美子数组」。
//
//请返回这个数组中「优美子数组」的数目。
//
//
//
//示例 1：
//
//输入：nums = [1,1,2,1,1], k = 3
//输出：2
//解释：包含 3 个奇数的子数组是 [1,1,2,1] 和 [1,2,1,1] 。
//示例 2：
//
//输入：nums = [2,4,6], k = 1
//输出：0
//解释：数列中不包含任何奇数，所以不存在优美子数组。
//示例 3：
//
//输入：nums = [2,2,2,1,2,2,1,2,2,2], k = 2
//输出：16
//
//
//提示：
//
//1 <= nums.length <= 50000
//1 <= nums[i] <= 10^5
//1 <= k <= nums.length

import Foundation

class Solution {
    func numberOfSubarrays1(_ nums: [Int], _ k: Int) -> Int {
        // 暴力
        var numberOfSubarray = 0;
        
        for i in 0..<nums.count {
            var count = 0;
            for j in 0...i {
                if nums[j] % 2 != 0 {
                    count += 1;
                }
                if count == k {
                    numberOfSubarray += 1;
                }
            }
        }
        
        return numberOfSubarray;
    }
    func numberOfSubarrays(_ nums: [Int], _ k: Int) -> Int {
        // DP 前缀和（计数和）
        var numberOfSubarray = 0;
        var sums = 0;
        var sumsCountMap:[Int] = [Int](repeating: 0, count: nums.count + 1);
        sumsCountMap[0] = 1;
        for i in 0..<nums.count {
            sums += nums[i]&1;
            numberOfSubarray += sums >= k ? sumsCountMap[sums - k] : 0
            sumsCountMap[sums] += 1;
        }
        
        return numberOfSubarray;
    }
}

print(Solution().numberOfSubarrays1([1,1,2,1,1], 3));
print(Solution().numberOfSubarrays1([2,4,6], 1));
print(Solution().numberOfSubarrays([1,1,2,1,1], 3));
print(Solution().numberOfSubarrays([2,4,6], 1));
