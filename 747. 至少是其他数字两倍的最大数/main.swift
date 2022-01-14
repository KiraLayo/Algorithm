//
//  main.swift
//  747. 至少是其他数字两倍的最大数
//
//  Created by YP-21031 on 2022/1/13.
//  Copyright © 2022 KiraLayo. All rights reserved.
//

//747. 至少是其他数字两倍的最大数
//给你一个整数数组 nums ，其中总是存在 唯一的 一个最大整数 。
//
//请你找出数组中的最大元素并检查它是否 至少是数组中每个其他数字的两倍 。如果是，则返回 最大元素的下标 ，否则返回 -1 。
//
//
//
//示例 1：
//
//输入：nums = [3,6,1,0]
//输出：1
//解释：6 是最大的整数，对于数组中的其他整数，6 大于数组中其他元素的两倍。6 的下标是 1 ，所以返回 1 。
//示例 2：
//
//输入：nums = [1,2,3,4]
//输出：-1
//解释：4 没有超过 3 的两倍大，所以返回 -1 。
//示例 3：
//
//输入：nums = [1]
//输出：0
//解释：因为不存在其他数字，所以认为现有数字 1 至少是其他数字的两倍。
//
//
//提示：
//
//1 <= nums.length <= 50
//0 <= nums[i] <= 100
//nums 中的最大元素是唯一的


import Foundation

class Solution {
    func dominantIndex(_ nums: [Int]) -> Int {
        // 代表数字
        var num1 = -1, num2 = -1;
        var index = -1;
        for i in 0..<nums.count {
            if nums[i] > num1 {
                num2 = num1;
                num1 = nums[i];
                index = i;
            } else if (nums[i] > num2) {
                num2 = nums[i];
            }
        }
        return num1 >= 2 * num2 ? index : -1;
    }
}

print(Solution().dominantIndex([1,0]))
