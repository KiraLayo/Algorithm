//
//  main.swift
//  217. 存在重复元素
//
//  Created by YP-21031 on 2022/1/4.
//  Copyright © 2022 KiraLayo. All rights reserved.
//

//217. 存在重复元素
//给定一个整数数组，判断是否存在重复元素。
//
//如果存在一值在数组中出现至少两次，函数返回 true 。如果数组中每个元素都不相同，则返回 false 。
//
//
//
//示例 1:
//
//输入: [1,2,3,1]
//输出: true
//示例 2:
//
//输入: [1,2,3,4]
//输出: false
//示例 3:
//
//输入: [1,1,1,3,3,4,3,2,4,2]
//输出: true

import Foundation

class Solution {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        return useSortArray(nums);
        //        return useHashMap(nums);
    }
    func useSortArray(_ nums: [Int]) -> Bool {
        guard nums.count > 1 else {
            return false;
        }
        let nums = nums.sorted();
        for i in 0...nums.count - 2 {
            if nums[i] == nums[i + 1] {
                return true;
            }
        }
        return false;
    }
    
    func useHashMap(_ nums: [Int]) -> Bool {
        var numsHashMap:[Int: Bool] = [:];
        for i in 0...nums.count - 1 {
            if let _ = numsHashMap[nums[i]] {
                return true
            }
            numsHashMap[nums[i]] = true;
        }
        return false;
    }
}

print(Solution().containsDuplicate([0]))
