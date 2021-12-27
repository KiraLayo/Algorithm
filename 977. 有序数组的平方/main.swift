//
//  main.swift
//  977. 有序数组的平方
//
//  Created by YP-21031 on 2021/12/20.
//  Copyright © 2021 KiraLayo. All rights reserved.
//

//977. 有序数组的平方
//给你一个按 非递减顺序 排序的整数数组 nums，返回 每个数字的平方 组成的新数组，要求也按 非递减顺序 排序。
//
//
//
//示例 1：
//
//输入：nums = [-4,-1,0,3,10]
//输出：[0,1,9,16,100]
//解释：平方后，数组变为 [16,1,0,9,100]
//排序后，数组变为 [0,1,9,16,100]
//示例 2：
//
//输入：nums = [-7,-3,2,3,11]
//输出：[4,9,9,49,121]
//
//
//提示：
//
//1 <= nums.length <= 104
//-104 <= nums[i] <= 104
//nums 已按 非递减顺序 排序
//
//
//进阶：
//
//请你设计时间复杂度为 O(n) 的算法解决本问题

import Foundation

class Solution {
    func sortedSquares(_ nums: [Int]) -> [Int] {
        var start = 0, end = nums.count - 1, pos = nums.count - 1;
        var res = [Int](repeating: 0,count: nums.count);
        
        while start <= end {
            if nums[start] * nums[start] > nums[end] * nums[end] {
                res[pos] = nums[start] * nums[start];
                start += 1;
            } else {
                res[pos] = nums[end] * nums[end];
                end -= 1;
            }
            pos -= 1;
        }
        
        return res;
    }
}
