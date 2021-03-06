//
//  main.swift
//  69.MySqrt
//
//  Created by yp-tc-m-2548 on 2021/2/26.
//  Copyright © 2021 KiraLayo. All rights reserved.
//

//69. x 的平方根
//
//实现 int sqrt(int x) 函数。
//
//计算并返回 x 的平方根，其中 x 是非负整数。
//
//由于返回类型是整数，结果只保留整数的部分，小数部分将被舍去。
//
//示例 1:
//
//输入: 4
//输出: 2
//示例 2:
//
//输入: 8
//输出: 2
//说明: 8 的平方根是 2.82842...,
//     由于返回类型是整数，小数部分将被舍去
//
//来源：力扣（LeetCode）
//链接：https://leetcode-cn.com/problems/sqrtx
//著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。

class Solution {
    func mySqrt(_ x: Int) -> Int {
        return self.quickSearch(target:x);
    }
    
    func quickSearch(target:Int) -> Int {
        
        if target == 0 {
            return 0;
        }
        
        var left = 0;
        var right = target/2 + 1;

        while left <= right {
            let middle = left + (right - left)>>2;

            if middle*middle == target {
                return middle;
            }else if(middle*middle < target){
                left = middle + 1;
            }else{
                right = middle - 1;
            }
        }

        return right;
    }
}

