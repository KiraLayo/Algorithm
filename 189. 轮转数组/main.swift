//
//  main.swift
//  189. 轮转数组
//
//  Created by YP-21031 on 2021/12/2.
//  Copyright © 2021 KiraLayo. All rights reserved.
//

//189. 轮转数组
//
//给你一个数组，将数组中的元素向右轮转 k 个位置，其中 k 是非负数。
//
//
//
//示例 1:
//
//输入: nums = [1,2,3,4,5,6,7], k = 3
//输出: [5,6,7,1,2,3,4]
//解释:
//向右轮转 1 步: [7,1,2,3,4,5,6]
//向右轮转 2 步: [6,7,1,2,3,4,5]
//向右轮转 3 步: [5,6,7,1,2,3,4]
//示例 2:
//
//输入：nums = [-1,-100,3,99], k = 2
//输出：[3,99,-1,-100]
//解释:
//向右轮转 1 步: [99,-1,-100,3]
//向右轮转 2 步: [3,99,-1,-100]
//
//
//提示：
//
//1 <= nums.length <= 105
//-231 <= nums[i] <= 231 - 1
//0 <= k <= 105
//
//
//进阶：
//
//尽可能想出更多的解决方案，至少有 三种 不同的方法可以解决这个问题。
//你可以使用空间复杂度为 O(1) 的 原地 算法解决这个问题吗？


import Foundation

class Solution {
    func rotate(_ nums: inout [Int], _ k: Int) {
        if k == 0 {
            return ;
        }
    
        // rotate1(&nums, k);
        rotate2(&nums, k);
    }
    
    // use another array
    func rotate1(_ nums: inout [Int], _ k: Int) {
        let count = nums.count;
        let k = k % count;
        let numsCopy = nums;
        for index in 0..<count {
            let newIndex = (index + k) % count;
            nums[newIndex] = numsCopy[index];
        }
    }
    
    // mutible flip array
    func rotate2(_ nums: inout [Int], _ k: Int) {
        let count = nums.count;
        let k = k % count;
        
        nums.reverse();
        nums[0..<k].reverse();
        nums[k...].reverse();
    }
    
//    abcde -> -bcda [e] -> -bcea [d] ->
    
}

//[1,2,3,4,5,6,7]

4321765
5671234

