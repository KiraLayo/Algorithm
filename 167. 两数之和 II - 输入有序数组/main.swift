//
//  main.swift
//  167. 两数之和 II - 输入有序数组
//
//  Created by YP-21031 on 2021/12/26.
//  Copyright © 2021 KiraLayo. All rights reserved.
//
//167. 两数之和 II - 输入有序数组
//给定一个已按照 非递减顺序排列  的整数数组 numbers ，请你从数组中找出两个数满足相加之和等于目标数 target 。
//
//函数应该以长度为 2 的整数数组的形式返回这两个数的下标值。numbers 的下标 从 1 开始计数 ，所以答案数组应当满足 1 <= answer[0] < answer[1] <= numbers.length 。
//
//你可以假设每个输入 只对应唯一的答案 ，而且你 不可以 重复使用相同的元素。
//
//
//示例 1：
//
//输入：numbers = [2,7,11,15], target = 9
//输出：[1,2]
//解释：2 与 7 之和等于目标数 9 。因此 index1 = 1, index2 = 2 。
//示例 2：
//
//输入：numbers = [2,3,4], target = 6
//输出：[1,3]
//示例 3：
//
//输入：numbers = [-1,0], target = -1
//输出：[1,2]
//
//
//提示：
//
//2 <= numbers.length <= 3 * 104
//-1000 <= numbers[i] <= 1000
//numbers 按 非递减顺序 排列
//-1000 <= target <= 1000
//仅存在一个有效答案
import Foundation

class Solution {
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        return useMap(numbers, target);
    }
    
    func useMap(_ numbers: [Int], _ target: Int) -> [Int] {
        var map: [Int: Int] = [Int: Int]();
        var res: [Int] = [];
        
        for i in 0..<numbers.count {
            if let val = map[target - numbers[i]] {
                res = [val + 1, i + 1]
                break;
            } else {
                map[numbers[i]] = i;
            }
        }
        return res;
    }
    func useTwoPoint(_ numbers: [Int], _ target: Int) -> [Int] {
        var left = 0, right = numbers.count - 1;
        while left != right {
            let sum = numbers[target] + numbers[left];
            if sum > target{
                right -= 1;
            } else if sum ==  target {
                return [left + 1, right + 1]
            } else {
                left += 1;
            }
        }
        return [];
    }
}
