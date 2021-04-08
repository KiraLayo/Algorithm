//
//  main.swift
//  525. 连续数组
//
//  Created by yp-tc-m-2548 on 2021/4/8.
//  Copyright © 2021 KiraLayo. All rights reserved.
//
//525. 连续数组
//给定一个二进制数组, 找到含有相同数量的 0 和 1 的最长连续子数组（的长度）。
//
//
//
//示例 1:
//
//输入: [0,1]
//输出: 2
//说明: [0, 1] 是具有相同数量0和1的最长连续子数组。
//示例 2:
//
//输入: [0,1,0]
//输出: 2
//说明: [0, 1] (或 [1, 0]) 是具有相同数量0和1的最长连续子数组。
//
//
//注意: 给定的二进制数组的长度不会超过50000。
//

import Foundation

class Solution {
    func findMaxLength(_ nums: [Int]) -> Int {
        // DP 前缀和
        var maxLength = 0;
        var count = 0;
        var countAndIndexMap:[Int:Int] = [0:-1];
        for i in 0..<nums.count {
            count += nums[i] == 1 ? 1 : -1;
            // 这里判断拥有相同count来计算长度的依据是，从i经过length个元素到达j，map[count] 不变，表示这length个元素0和1数量相等，之后通过j-1来计算length，因为i是从0开始
            if countAndIndexMap[count] != nil {
                maxLength = max(maxLength, i - countAndIndexMap[count]!);
            } else {
                countAndIndexMap[count] = i
            }
        }
        return maxLength;
    }
}

print(Solution().findMaxLength([0, 0, 1, 0, 0, 0, 1, 1]));
print(Solution().findMaxLength([0, 0, 1, 1]));
