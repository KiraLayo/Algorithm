//
//  main.swift
//  219. 存在重复元素 II
//
//  Created by YP-21031 on 2022/7/14.
//  Copyright © 2022 KiraLayo. All rights reserved.
//

//219. 存在重复元素 II
//给你一个整数数组 nums 和一个整数 k ，判断数组中是否存在两个 不同的索引 i 和 j ，满足 nums[i] == nums[j] 且 abs(i - j) <= k 。如果存在，返回 true ；否则，返回 false 。
//
//
//
//示例 1：
//
//输入：nums = [1,2,3,1], k = 3
//输出：true
//示例 2：
//
//输入：nums = [1,0,1,1], k = 1
//输出：true
//示例 3：
//
//输入：nums = [1,2,3,1,2,3], k = 2
//输出：false
//
//
//
//
//提示：
//
//1 <= nums.length <= 105
//-109 <= nums[i] <= 109
//0 <= k <= 105

import Foundation

class Solution {
//    func containsNearbyDuplicate(_ nums: [Int], _ k: Int) -> Bool {
//        // key 值 value 最近的索引
//        var countMap:[Int:Int] = [:];
//        for i in 0 ..< nums.count {
//            let num = nums[i];
//            if countMap.keys.contains(num) && i - countMap[num]! <= k {
//                return true;
//            }
//            countMap[num] = i;
//        }
//        return false;
//    }
    
    func containsNearbyDuplicate(_ nums: [Int], _ k: Int) -> Bool {
        // 滑动窗口
        var window: Set<Int> = [];
        
        for i in 0 ..< nums.count {
            if i > k {
                window.remove(nums[i - k - 1]);
            }
            if window.contains(nums[i]) {
                return true
            }
            window.insert(nums[i]);
        }
        return false;
    }
}
