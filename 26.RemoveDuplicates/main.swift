//
//  main.swift
//  26.RemoveDuplicates
//
//  Created by yp-tc-m-2548 on 2021/2/23.
//  Copyright © 2021 KiraLayo. All rights reserved.
//

//给定一个排序数组，你需要在 原地 删除重复出现的元素，使得每个元素只出现一次，返回移除后数组的新长度。
//
//不要使用额外的数组空间，你必须在 原地 修改输入数组 并在使用 O(1) 额外空间的条件下完成。
//
//
//
//示例 1:
//
//给定数组 nums = [1,1,2],
//
//函数应该返回新的长度 2, 并且原数组 nums 的前两个元素被修改为 1, 2。
//
//你不需要考虑数组中超出新长度后面的元素。
//示例 2:
//
//给定 nums = [0,0,1,1,1,2,2,3,3,4],
//
//函数应该返回新的长度 5, 并且原数组 nums 的前五个元素被修改为 0, 1, 2, 3, 4。
//
//你不需要考虑数组中超出新长度后面的元素。
//
//来源：力扣（LeetCode）
//链接：https://leetcode-cn.com/problems/remove-duplicates-from-sorted-array
//著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。

import Foundation

class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        if (nums.count < 2) {
            return nums.count;
        }
        var p1Index = 0;
        var p2Index = 0;
        while p2Index < nums.count {
            if (nums[p1Index] != nums[p2Index]) {
                p1Index += 1;
                nums[p1Index] = nums[p2Index];
            }
            p2Index += 1;
        }
        return p1Index + 1;
    }
}

var arr1 = [0,0,1,1,1,2,2,3,3,4];
print(Solution().removeDuplicates(&arr1));
arr1 = [1,1,2];
print(Solution().removeDuplicates(&arr1));
