//
//  main.swift
//  673. 最长递增子序列的个数
//
//  Created by yp-tc-m-2548 on 2021/3/17.
//  Copyright © 2021 KiraLayo. All rights reserved.
//
//673. 最长递增子序列的个数
//给定一个未排序的整数数组，找到最长递增子序列的个数。
//
//示例 1:
//
//输入: [1,3,5,4,7]
//输出: 2
//解释: 有两个最长递增子序列，分别是 [1, 3, 4, 7] 和[1, 3, 5, 7]。
//示例 2:
//
//输入: [2,2,2,2,2]
//输出: 5
//解释: 最长递增子序列的长度是1，并且存在5个子序列的长度为1，因此输出5。
//注意: 给定的数组长度不超过 2000 并且结果一定是32位有符号整数。
//

import Foundation

class Solution {
    func findNumberOfLIS(_ nums: [Int]) -> Int {
//        线性动态规划
//        lengths[i] = max(lengths[j]) + 1; j < i
//        maxLength = max(length[i]);
//        number = max(count(length[i] == (maxLength - 1), count(length[i] == (maxLength))) ;
        
        var lengths = [Int](repeating: 1, count: nums.count);// 对应位置递增序列的长度
        var counts = [Int](repeating: 1, count: nums.count); // 对应位置递增序列的计数
        var maxLength = 1;
        for i in 0..<nums.count {
            for j in 0..<i {
                if nums[i] > nums[j] {
                    if lengths[j] + 1 > lengths[i] {
                        lengths[i] = lengths[j] + 1;
                        // lengths[i] 需要增加，counts[i]和之前的计数结果保持一致，此处元素连接之前的递增序列，数列计数不变
                        counts[i] = counts[j];
                    } else if lengths[j] + 1 == lengths[i] {
                        // lengths[i] 不变, 此处元素的与之前序列可以生成新的序列长度为lengths[i]的序列，增加原有序列数量。
                        counts[i] += counts[j] ;
                    }
                }
            }
            maxLength = max(maxLength, lengths[i]);
        }
        print(lengths)
        print(counts)
        var res = 0;
        for length in lengths.enumerated() {
            if length.element == maxLength {
                res += counts[length.offset];
            }
        }
        return res;
    }
}

print(Solution().findNumberOfLIS([1,3,5,4,7]));
print(Solution().findNumberOfLIS([2,2,2,2,2]));
print(Solution().findNumberOfLIS([1,2,4,3,5,4,7,2]));
