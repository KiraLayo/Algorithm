//
//  main.swift
//  448. 找到所有数组中消失的数字
//
//  Created by YP-21031 on 2022/11/24.
//  Copyright © 2022 KiraLayo. All rights reserved.
//
//
//448. 找到所有数组中消失的数字
//给你一个含 n 个整数的数组 nums ，其中 nums[i] 在区间 [1, n] 内。请你找出所有在 [1, n] 范围内但没有出现在 nums 中的数字，并以数组的形式返回结果。
//
//
//
//示例 1：
//
//输入：nums = [4,3,2,7,8,2,3,1]
//输出：[5,6]
//示例 2：
//
//输入：nums = [1,1]
//输出：[2]
//
//
//提示：
//
//n == nums.length
//1 <= n <= 105
//1 <= nums[i] <= n
//进阶：你能在不使用额外空间且时间复杂度为 O(n) 的情况下解决这个问题吗? 你可以假定返回的数组不算在额外空间内。

class Solution {
    func findDisappearedNumbers(_ nums: [Int]) -> [Int] {
        var nums = nums;
        let count = nums.count
        
        for num in nums {
            // 使用原数组作为hash,因为是区间范围内的等差数列
            // index为 具体数-1，value为+=n
            // 重复的数index计算时可能已经超过n，所以需要对n取模
            let index = (num - 1) % count
            nums[index] += count
        }
        
        var res: [Int] = []
        
        for index in 0..<count {
            // 最后hash中所有未消失数都必然大于n
            if nums[index] <= count {
                res.append(index + 1)
            }
        }
        
        return res
    }
}

print(Solution().findDisappearedNumbers([4,3,2,7,8,2,3,1]))

