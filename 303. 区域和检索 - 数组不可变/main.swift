//
//  main.swift
//  303. 区域和检索 - 数组不可变
//
//  Created by yp-tc-m-2548 on 2021/4/6.
//  Copyright © 2021 KiraLayo. All rights reserved.
//
//303. 区域和检索 - 数组不可变
//给定一个整数数组  nums，求出数组从索引 i 到 j（i ≤ j）范围内元素的总和，包含 i、j 两点。
//
//实现 NumArray 类：
//
//NumArray(int[] nums) 使用数组 nums 初始化对象
//int sumRange(int i, int j) 返回数组 nums 从索引 i 到 j（i ≤ j）范围内元素的总和，包含 i、j 两点（也就是 sum(nums[i], nums[i + 1], ... , nums[j])）
//
//
//示例：
//
//输入：
//["NumArray", "sumRange", "sumRange", "sumRange"]
//[[[-2, 0, 3, -5, 2, -1]], [0, 2], [2, 5], [0, 5]]
//输出：
//[null, 1, -1, -3]
//
//解释：
//NumArray numArray = new NumArray([-2, 0, 3, -5, 2, -1]);
//numArray.sumRange(0, 2); // return 1 ((-2) + 0 + 3)
//numArray.sumRange(2, 5); // return -1 (3 + (-5) + 2 + (-1))
//numArray.sumRange(0, 5); // return -3 ((-2) + 0 + 3 + (-5) + 2 + (-1))
//
//
//提示：
//
//0 <= nums.length <= 104
//-105 <= nums[i] <= 105
//0 <= i <= j < nums.length
//最多调用 104 次 sumRange 方法

import Foundation

class NumArray {
    var prefixNums:[Int];
    init(_ nums: [Int]) {
        // 前缀和，前i个元素的和，总长度是n+1,不然后续计算需要换算区间
        prefixNums = [Int](repeating: 0, count: nums.count + 1);
        for i in 1..<prefixNums.count {
            prefixNums[i] = prefixNums[i-1] + nums[i-1];
        }
    }
    
    func sumRange(_ left: Int, _ right: Int) -> Int {
        return prefixNums[right + 1] - prefixNums[left];
    }
}

/**
 * Your NumArray object will be instantiated and called as such:
 * let obj = NumArray(nums)
 * let ret_1: Int = obj.sumRange(left, right)
 */

var numArray = NumArray([-2, 0, 3, -5, 2, -1]);
print(numArray.sumRange(0, 2));
 // return 1 ((-2) + 0 + 3)
print(numArray.sumRange(2, 5)); // return -1 (3 + (-5) + 2 + (-1))
print(numArray.sumRange(0, 5)); // return -3 ((-2) + 0 + 3 + (-5) + 2 + (-1))
