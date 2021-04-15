//
//  main.swift
//  排序.快速排序
//
//  Created by yp-tc-m-2548 on 2021/4/15.
//  Copyright © 2021 KiraLayo. All rights reserved.
//

import Foundation

// 快速排序
func quickSort(nums:inout [Int], start: Int, end: Int) {
    if (start >= end) {
        return;
    }
    var left = start;
    var right = end;
    let pivot = nums[start];
    while (left < right) {
        while left < right && nums[right] >= pivot {
            right -= 1;
        }
        nums[left] = nums[right];
        
        while left < right && nums[left] <= pivot {
            left += 1;
        }
        nums[right] = nums[left];
    }
    nums[left] = pivot;
    quickSort(nums: &nums, start: start, end: left - 1);
    quickSort(nums: &nums, start: left + 1, end: end)
}

var arr = [1, 3, 2,3,5,3,6,9,12,7];
quickSort(nums: &arr, start: 0, end: arr.count - 1);
print(arr);
