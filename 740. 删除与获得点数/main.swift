//
//  main.swift
//  740. 删除与获得点数
//
//  Created by yp-tc-m-2548 on 2021/3/29.
//  Copyright © 2021 KiraLayo. All rights reserved.
//
//740. 删除与获得点数
//给定一个整数数组 nums ，你可以对它进行一些操作。
//
//每次操作中，选择任意一个 nums[i] ，删除它并获得 nums[i] 的点数。之后，你必须删除每个等于 nums[i] - 1 或 nums[i] + 1 的元素。
//
//开始你拥有 0 个点数。返回你能通过这些操作获得的最大点数。
//
//示例 1:
//
//输入: nums = [3, 4, 2]
//输出: 6
//解释:
//删除 4 来获得 4 个点数，因此 3 也被删除。
//之后，删除 2 来获得 2 个点数。总共获得 6 个点数。
//示例 2:
//
//输入: nums = [2, 2, 3, 3, 3, 4]
//输出: 9
//解释:
//删除 3 来获得 3 个点数，接着要删除两个 2 和 4 。
//之后，再次删除 3 获得 3 个点数，再次删除 3 获得 3 个点数。
//总共获得 9 个点数。
//注意:
//
//nums的长度最大为20000。
//每个整数nums[i]的大小都在[1, 10000]范围内。

import Foundation

class Solution {
    func deleteAndEarn(_ nums: [Int]) -> Int {
        // DP
        // need to become a 198 question
        // sort the nums and count every num to a count array count:[Int]
        // then the count Array beccome a 198 question
        guard nums.count != 0 else {
            return 0;
        }
        
        guard nums.count != 1 else {
            return nums[0];
        }
        
        var len = 0;
        
        nums.forEach { len = max($0, len) }
        var count:[Int] = [Int](repeating: 0, count: len + 1);
        nums.forEach { count[$0] += 1; }
        
        var pre = 0;
        var cur = 0;
        for i in 0..<count.count {
            let temp = cur;
            cur = max(pre + i * count[i], cur);
            pre = temp
        }
        
        return cur;
    }
}

print(Solution().deleteAndEarn([3, 4, 2]))
print(Solution().deleteAndEarn([2, 2, 3, 3, 3, 4]))
