//
//  main.swift
//  665.CheckPossibility
//
//  Created by yp-tc-m-2548 on 2021/2/26.
//  Copyright © 2021 KiraLayo. All rights reserved.
//

//665. 非递减数列
//给你一个长度为 n 的整数数组，请你判断在 最多 改变 1 个元素的情况下，该数组能否变成一个非递减数列。
//
//我们是这样定义一个非递减数列的： 对于数组中任意的 i (0 <= i <= n-2)，总满足 nums[i] <= nums[i + 1]。
//
//
//
//示例 1:
//
//输入: nums = [4,2,3]
//输出: true
//解释: 你可以通过把第一个4变成1来使得它成为一个非递减数列。
//示例 2:
//
//输入: nums = [4,2,1]
//输出: false
//解释: 你不能在只改变一个元素的情况下将其变为非递减数列。
//
//
//提示：
//
//1 <= n <= 10 ^ 4
//- 10 ^ 5 <= nums[i] <= 10 ^ 5

class Solution {
    func checkPossibility(_ nums: [Int]) -> Bool {
        if (nums.count <= 2) {
            return true;
        }
        var lNums = nums;
        var reSortCount = 0;
        for i in 1..<lNums.count {
            if (lNums[i - 1] > lNums[i]) {
                reSortCount += 1 ;
                if (i == 1 ) || (lNums[i] >= lNums[i - 2]) {
                    lNums[i-1] = lNums[i];
                } else {
                    lNums[i] = lNums[i-1]
                }
            }
        }
        return reSortCount <= 1;
    }
}
