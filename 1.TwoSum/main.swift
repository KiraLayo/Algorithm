//
//  main.swift
//  1.TwoSum
//
//  Created by yp-tc-m-2548 on 2021/2/26.
//  Copyright © 2021 KiraLayo. All rights reserved.
//

//1. 两数之和
//
//给定一个整数数组 nums 和一个整数目标值 target，请你在该数组中找出 和为目标值 的那 两个 整数，并返回它们的数组下标。
//
//你可以假设每种输入只会对应一个答案。但是，数组中同一个元素不能使用两遍。
//
//你可以按任意顺序返回答案。
//
//
//
//示例 1：
//
//输入：nums = [2,7,11,15], target = 9
//输出：[0,1]
//解释：因为 nums[0] + nums[1] == 9 ，返回 [0, 1] 。
//示例 2：
//
//输入：nums = [3,2,4], target = 6
//输出：[1,2]
//示例 3：
//
//输入：nums = [3,3], target = 6
//输出：[0,1]
//
//
//提示：
//
//2 <= nums.length <= 103
//-109 <= nums[i] <= 109
//-109 <= target <= 109
//只会存在一个有效答案
//
//
//来源：力扣（LeetCode）
//链接：https://leetcode-cn.com/problems/two-sum
//著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。

import Foundation

class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var numMap = [Int:Int]();

        for index1 in 0..<nums.count {

            let key = nums[index1];

            if nil != numMap[target - key] {
                let index2 = numMap[target - key]!
                return [index2, index1];
            }
            
            if nil == numMap[key] {
                numMap[key] = index1;
            }
        }

        return [];

    }
}

