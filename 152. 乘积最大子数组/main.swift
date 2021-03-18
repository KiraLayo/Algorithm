//
//  main.swift
//  152. 乘积最大子数组
//
//  Created by yp-tc-m-2548 on 2021/3/18.
//  Copyright © 2021 KiraLayo. All rights reserved.
//

//152. 乘积最大子数组
//给你一个整数数组 nums ，请你找出数组中乘积最大的连续子数组（该子数组中至少包含一个数字），并返回该子数组所对应的乘积。
//
//
//
//示例 1:
//
//输入: [2,3,-2,4]
//输出: 6
//解释: 子数组 [2,3] 有最大乘积 6。
//示例 2:
//
//输入: [-2,0,-1]
//输出: 0
//解释: 结果不能为 2, 因为 [-2,-1] 不是子数组。


import Foundation

class Solution {
    func maxProduct(_ nums: [Int]) -> Int {
//        动态规划
//        因为乘积可能存在为负，并且之后如果再遇到负就会转正
//        引入状态转移方程组
//        dp[i] =
//        fmax(i) = max(fmax(i-1) * nums[i], fmin(i-1) * nums[i], nums[i])
//        fmin(i) = fmin(fmax(i-1) * nums[i], fmin(i-1) * nums[i], nums[i])
//        maxlen = max(maxlen, fmax(n));
        var maxF = 1;
        var minF = 1;
        var res = nums[0];
        for num in nums {
            // maxF，minF改变了所以最好用局部变量
            let maxf = maxF, minf = minF;
            maxF = max(maxf * num, minf * num, num);
            minF = min(maxf * num, minf * num, num);
            res = max(res, maxF);
        }
        return res;
    }
}

