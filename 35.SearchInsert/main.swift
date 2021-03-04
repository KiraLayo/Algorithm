//
//  main.swift
//  35.SearchInsert
//
//  Created by yp-tc-m-2548 on 2021/3/3.
//  Copyright © 2021 KiraLayo. All rights reserved.
//

//35. 搜索插入位置
//给定一个排序数组和一个目标值，在数组中找到目标值，并返回其索引。如果目标值不存在于数组中，返回它将会被按顺序插入的位置。
//
//你可以假设数组中无重复元素。
//
//示例 1:
//
//输入: [1,3,5,6], 5
//输出: 2
//示例 2:
//
//输入: [1,3,5,6], 2
//输出: 1
//示例 3:
//
//输入: [1,3,5,6], 7
//输出: 4
//示例 4:
//
//输入: [1,3,5,6], 0
//输出: 0

class Solution {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        if nums.count < 1 {
            return 0;
        }
        
        var pLeft = 0;
        var pRight = nums.count - 1;
        
        while pLeft <= pRight {
            let mid = (pRight - pLeft)/2 + pLeft;
            if nums[mid] == target {
                return mid;
            } else if nums[mid] < target {
                pLeft = mid + 1;
            } else {
                pRight = mid - 1;
            }
        }
        return pLeft;
    }
}

