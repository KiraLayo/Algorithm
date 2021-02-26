//
//  main.swift
//  31.NextPermutation
//
//  Created by yp-tc-m-2548 on 2021/2/26.
//  Copyright © 2021 KiraLayo. All rights reserved.
//
//31. 下一个排列
//实现获取 下一个排列 的函数，算法需要将给定数字序列重新排列成字典序中下一个更大的排列。
//
//如果不存在下一个更大的排列，则将数字重新排列成最小的排列（即升序排列）。
//
//必须 原地 修改，只允许使用额外常数空间。
//
//
//
//示例 1：
//
//输入：nums = [1,2,3]
//输出：[1,3,2]
//示例 2：
//
//输入：nums = [3,2,1]
//输出：[1,2,3]
//示例 3：
//
//输入：nums = [1,1,5]
//输出：[1,5,1]
//示例 4：
//
//输入：nums = [1]
//输出：[1]
//
//
//提示：
//
//1 <= nums.length <= 100
//0 <= nums[i] <= 100
//
//
//来源：力扣（LeetCode）
//链接：https://leetcode-cn.com/problems/next-permutation
//著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
class Solution {
    func nextPermutation(_ nums: inout [Int]) {
        var p1 = -1;
        
        for i in 1..<nums.count {
            if (nums[nums.count - i] > nums[nums.count - i - 1]) {
                p1 = nums.count - i - 1;
                break;
            }
        }
        
        if p1 < 0 {
            nums = nums.reversed();
            return;
        }
        
        for i in 0..<(nums.count - p1 - 1) {
            if (nums[nums.count - i - 1] > nums[p1]) {
                nums.swapAt(nums.count - i - 1, p1);
                nums[(p1 + 1)...].reverse();
                break;
            }
        }
    }
}

var nums = [1,2,3];
Solution().nextPermutation(&nums);
print(nums);
