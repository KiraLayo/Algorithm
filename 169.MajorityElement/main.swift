//
//  main.swift
//  169.MajorityElement
//
//  Created by yp-tc-m-2548 on 2021/2/26.
//  Copyright © 2021 KiraLayo. All rights reserved.
//

//169. 多数元素
//给定一个大小为 n 的数组，找到其中的多数元素。多数元素是指在数组中出现次数 大于 ⌊ n/2 ⌋ 的元素。
//
//你可以假设数组是非空的，并且给定的数组总是存在多数元素。
//
//
//
//示例 1：
//
//输入：[3,2,3]
//输出：3
//示例 2：
//
//输入：[2,2,1,1,1,2,2]
//输出：2
//
//
//进阶：
//
//尝试设计时间复杂度为 O(n)、空间复杂度为 O(1) 的算法解决此问题。

class Solution {
    func majorityElement(_ nums: [Int]) -> Int {
        var count:Int = 0;
        var candidate:Int = 0;
        
        for num in nums {
            if (count == 0) {
                candidate = num;
            }
            count += (num == candidate) ? 1 : -1;
        }

        return candidate;
    }
}
