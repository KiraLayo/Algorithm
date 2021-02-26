//
//  main.swift
//  152.MaxProduct
//
//  Created by yp-tc-m-2548 on 2021/2/26.
//  Copyright © 2021 KiraLayo. All rights reserved.
//

//152. 乘积最大子数组
//
//给你一个整数数组nums ，请你找出数组中乘积最大的连续子数组（该子数组中至少包含一个数字），并返回该子数组所对应的乘积。
//
//示例 1:
//
//输入: [2,3,-2,4]
//输出: 6
//解释: 子数组 [2,3] 有最大乘积 6。
//示例 2:
//
//输入: [-2,0,-1]
//输出: 0
//解释: 结果不能为 2, 因为 [-2,-1] 不是子数组。
//
//来源：力扣（LeetCode）
//链接：https://leetcode-cn.com/problems/maximum-product-subarray
//著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。

class Solution {
    func maxProduct(_ nums: [Int]) -> Int {
        var res = Int.min;
        // 记录到当前index的max和min
        var iMax = 1;
        var iMin = 1;
        
        for item in nums {
            if item < 0 { // 负数越接近0越大。
                let tmp = iMax;
                iMax = iMin;
                iMin = tmp;
            }
            iMax = max(iMax * item, item);
            iMin = max(iMin * item, item);
            res = max(iMax, res);
        }
        
        return res;
    }
}
