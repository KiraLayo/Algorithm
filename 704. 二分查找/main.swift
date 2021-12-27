//
//  main.swift
//  704. 二分查找
//
//  Created by YP-21031 on 2021/12/13.
//  Copyright © 2021 KiraLayo. All rights reserved.
//

//704. 二分查找
//给定一个 n 个元素有序的（升序）整型数组 nums 和一个目标值 target  ，写一个函数搜索 nums 中的 target，如果目标值存在返回下标，否则返回 -1。
//
//
//示例 1:
//
//输入: nums = [-1,0,3,5,9,12], target = 9
//输出: 4
//解释: 9 出现在 nums 中并且下标为 4
//示例 2:
//
//输入: nums = [-1,0,3,5,9,12], target = 2
//输出: -1
//解释: 2 不存在 nums 中因此返回 -1
//
//
//提示：
//
//你可以假设 nums 中的所有元素是不重复的。
//n 将在 [1, 10000]之间。
//nums 的每个元素都将在 [-9999, 9999]之间。

import Foundation

class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        guard nums.count != 1 else {
            return nums[0] == target ? 0 : -1;
        }
        
        var left = 0;
        var right = nums.count - 1;
            
        while left <= right {
            let index: Int = (right - left) / 2 + left
            if nums[index] < target {
                left = index + 1;
            } else if nums[index] > target {
                right = right - 1;
            } else {
                return index;
            }
        }
        
        return -1
    }
}

//[-1,0,3,5,9,12]
//9
