//
//  main.swift
//  523. 连续的子数组和
//
//  Created by yp-tc-m-2548 on 2021/4/9.
//  Copyright © 2021 KiraLayo. All rights reserved.
//
//523. 连续的子数组和
//给定一个包含 非负数 的数组和一个目标 整数 k ，编写一个函数来判断该数组是否含有连续的子数组，其大小至少为 2，且总和为 k 的倍数，即总和为 n * k ，其中 n 也是一个整数。
//
//
//
//示例 1：
//
//输入：[23,2,4,6,7], k = 6
//输出：True
//解释：[2,4] 是一个大小为 2 的子数组，并且和为 6。
//示例 2：
//
//输入：[23,2,6,4,7], k = 6
//输出：True
//解释：[23,2,6,4,7]是大小为 5 的子数组，并且和为 42。
//
//
//说明：
//
//数组的长度不会超过 10,000 。
//你可以认为所有数字总和在 32 位有符号整数范围内。
import Foundation

class Solution {
    func checkSubarraySum(_ nums: [Int], _ k: Int) -> Bool {
        // DP 前缀和
        // pre[i] = pre[i-1] + nums[i-1];
        // j..<i区间内的和是k的倍数，且区间>=2:
        
        // (pre[i] - pre[j]) % k = 0
        // pre[i] % k - pre[j] % k = 0
        // pre[j]%k = pre[i]%k
        // 这里最终的map可以通过 ‘=’两边的结果来记录
        // key: preSum%k
        // value: index 最后用于计算距离
        
        
        var sums = 0;
        var modAndIndexMap:[Int:Int] = [0:-1];
        
        for i in 0..<nums.count {
            sums += nums[i];
            if (k != 0) {
                sums = sums % k;
            }
            if let index = modAndIndexMap[sums]  {
                if i - index > 1 {
                    return true;
                }
            } else {
                modAndIndexMap[sums] = modAndIndexMap[sums] ?? i;
            }
        }
        return false;
    }
}

print(Solution().checkSubarraySum([7,3], 5));
