//
//  main.swift
//  35. 搜索插入位置
//
//  Created by YP-21031 on 2021/12/13.
//  Copyright © 2021 KiraLayo. All rights reserved.
//
//35. 搜索插入位置
//给定一个排序数组和一个目标值，在数组中找到目标值，并返回其索引。如果目标值不存在于数组中，返回它将会被按顺序插入的位置。
//
//请必须使用时间复杂度为 O(log n) 的算法。
//
//
//
//示例 1:
//
//输入: nums = [1,3,5,6], target = 5
//输出: 2
//示例 2:
//
//输入: nums = [1,3,5,6], target = 2
//输出: 1
//示例 3:
//
//输入: nums = [1,3,5,6], target = 7
//输出: 4
//示例 4:
//
//输入: nums = [1,3,5,6], target = 0
//输出: 0
//示例 5:
//
//输入: nums = [1], target = 0
//输出: 0
//
//
//提示:
//
//1 <= nums.length <= 104
//-104 <= nums[i] <= 104
//nums 为无重复元素的升序排列数组
//-104 <= target <= 104

import Foundation

class Solution {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        var left = 0, right = nums.count - 1;
        // also can transform to index which is the first equal than target
        while left <= right {
            let index = (right - left) / 2 + left;
            if nums[index] < target {
                left = index + 1;
            } else if nums[index] > target {
                right = index - 1;
            } else {
                return index;
            }
        }
        return left;
    }
}

print(Solution().searchInsert([1, 3 , 5 ,6], 7));
print(Solution().searchInsert([1, 3], 3));
print(Solution().searchInsert([1], 0));
print(Solution().searchInsert([1], 2));
print(Solution().searchInsert([1], 1));
