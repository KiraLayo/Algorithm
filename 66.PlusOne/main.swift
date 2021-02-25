//
//  main.swift
//  66.PlusOne
//
//  Created by yp-tc-m-2548 on 2021/2/23.
//  Copyright © 2021 KiraLayo. All rights reserved.
//
//给定一个由 整数 组成的 非空 数组所表示的非负整数，在该数的基础上加一。
//
//最高位数字存放在数组的首位， 数组中每个元素只存储单个数字。
//
//你可以假设除了整数 0 之外，这个整数不会以零开头。
//
//
//
//示例 1：
//
//输入：digits = [1,2,3]
//输出：[1,2,4]
//解释：输入数组表示数字 123。
//示例 2：
//
//输入：digits = [4,3,2,1]
//输出：[4,3,2,2]
//解释：输入数组表示数字 4321。
//示例 3：
//
//输入：digits = [0]
//输出：[1]
//
//
//提示：
//
//1 <= digits.length <= 100
//0 <= digits[i] <= 9
//
//来源：力扣（LeetCode）
//链接：https://leetcode-cn.com/problems/plus-one
//著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
import Foundation

class Solution {
    func plusOne(_ digits: [Int]) -> [Int] {
        var incressIndex = digits.count - 1;
        var nums = digits;
        while true {
            if (incressIndex < 0) {
                nums = [1] + nums;
                break;
            } else {
                if (nums[incressIndex] + 1 == 10) {
                    nums[incressIndex] = 0;
                    incressIndex -= 1;
                } else {
                    nums[incressIndex] += 1;
                    break;
                }
            }
        }
        return nums;
    }
}


print(Solution().plusOne([1]));
print(Solution().plusOne([1,2]));
print(Solution().plusOne([1,5]));
print(Solution().plusOne([9]));
