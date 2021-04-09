//
//  main.swift
//  560. 和为K的子数组
//
//  Created by yp-tc-m-2548 on 2021/4/9.
//  Copyright © 2021 KiraLayo. All rights reserved.
//
//560. 和为K的子数组
//给定一个整数数组和一个整数 k，你需要找到该数组中和为 k 的连续的子数组的个数。
//
//示例 1 :
//
//输入:nums = [1,1,1], k = 2
//输出: 2 , [1,1] 与 [1,1] 为两种不同的情况。
//说明 :
//
//数组的长度为 [1, 20,000]。
//数组中元素的范围是 [-1000, 1000] ，且整数 k 的范围是 [-1e7, 1e7]。

import Foundation

class Solution {
    func subarraySum(_ nums: [Int], _ k: Int) -> Int {
        // DP 前缀和
        let N = nums.count;
        var kSumCount = 0;
        
        var sums:[Int] = [Int](repeating: 0, count: N + 1);
        var sumsAndCountMap:[Int:Int] = [0:1];
        
        for i in 1..<sums.count {
            sums[i] = sums[i-1] + nums[i-1];
            if sumsAndCountMap[sums[i] - k] != nil  {
                kSumCount += sumsAndCountMap[sums[i] - k]!;
            }
            sumsAndCountMap[sums[i], default:0] += 1;
        }
        return kSumCount;
    }
}

print(Solution().subarraySum([1,-1,0],0));

