//
//  main.swift
//  7.Reverse
//
//  Created by yp-tc-m-2548 on 2021/2/26.
//  Copyright © 2021 KiraLayo. All rights reserved.
//
//7. 整数反转
//
//给你一个 32 位的有符号整数 x ，返回 x 中每位上的数字反转后的结果。
//
//如果反转后整数超过 32 位的有符号整数的范围 [−231,  231 − 1] ，就返回 0。
//
//假设环境不允许存储 64 位整数（有符号或无符号）。
// 
//
//示例 1：
//
//输入：x = 123
//输出：321
//示例 2：
//
//输入：x = -123
//输出：-321
//示例 3：
//
//输入：x = 120
//输出：21
//示例 4：
//
//输入：x = 0
//输出：0
// 
//
//提示：
//
//-231 <= x <= 231 - 1
//
//来源：力扣（LeetCode）
//链接：https://leetcode-cn.com/problems/reverse-integer
//著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。

class Solution {
    func reverse(_ x: Int) -> Int {
        let bit = 32-1;
        let max = 1<<bit - 1;
        let maxLast = max%10;
        let min = 1<<bit * -1;
        let minLast = min%10;
        
        var input = x;
        var output = 0;
        while(input != 0){
            let last = input % 10;
            input /= 10;

            if ((output == max/10) && (last > maxLast)) || (output > max/10) {
                return 0;
            }

            if ((output == min/10) && (last < minLast)) || (output < min/10) {
                return 0;
            }

            output = output * 10 + last;
        }

        return output;
    }
}
