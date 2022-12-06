//
//  main.swift
//  414. 第三大的数
//
//  Created by YP-21031 on 2022/7/26.
//  Copyright © 2022 KiraLayo. All rights reserved.
//

//414. 第三大的数
//给你一个非空数组，返回此数组中 第三大的数 。如果不存在，则返回数组中最大的数。
//
//
//
//示例 1：
//
//输入：[3, 2, 1]
//输出：1
//解释：第三大的数是 1 。
//示例 2：
//
//输入：[1, 2]
//输出：2
//解释：第三大的数不存在, 所以返回最大的数 2 。
//示例 3：
//
//输入：[2, 2, 3, 1]
//输出：1
//解释：注意，要求返回第三大的数，是指在所有不同数字中排第三大的数。
//此例中存在两个值为 2 的数，它们都排第二。在所有不同数字中排第三大的数为 1 。
//
//
//提示：
//
//1 <= nums.length <= 104
//-231 <= nums[i] <= 231 - 1
//
//
//进阶：你能设计一个时间复杂度 O(n) 的解决方案吗？

import Foundation

class Solution {
    func thirdMax(_ nums: [Int]) -> Int {
        var max = Int.min, mid = Int.min, third = Int.min;
        
        nums.forEach {
            if $0 > max {
                third = mid;
                mid = max;
                max = $0;
            } else if $0 < max && $0 > mid {
                third = mid;
                mid = $0
            } else if mid > $0 && third < $0 {
                third = $0
            }
        }
        return third == Int.min ? max : third;
    }
}

let string = "01234";

let index = string.range(of: "1");


print(string.substring(from: index!.upperBound));


