//
//  main.swift
//  排序.归并排序
//
//  Created by yp-tc-m-2548 on 2021/4/15.
//  Copyright © 2021 KiraLayo. All rights reserved.
//

import Foundation

func merageSort(nums:inout [Int], start: Int, end: Int, useInPlace: Bool = false) {
    if start == end {
        return;
    }
    let middle = (start + end)/2;
    
    merageSort(nums: &nums, start: start, end: middle, useInPlace: useInPlace);
    merageSort(nums: &nums, start: middle + 1, end: end, useInPlace: useInPlace);
    useInPlace ? inPlaceMerage(nums: &nums, start: start, end: end) : merage(nums: &nums, start: start, end: end);
}

func merage(nums:inout [Int], start: Int, end: Int) {
    var result:[Int] = [Int](repeating: 0, count: end - start + 1);
    var index = 0;
    
    let middle = (start + end)/2;
    var index1 = start;
    var index2 = middle + 1;
        
    while index1 <= middle && index2 <= end {
        if nums[index1] <= nums[index2] {
            result[index] = nums[index1];
            index1 += 1;
        } else {
            result[index] = nums[index2];
            index2 += 1;
        }
        index += 1;
    }
    
    while index1 <= middle {
        result[index] = nums[index1];
        index += 1;
        index1 += 1;
    }
    
    while index2 <= end {
        result[index] = nums[index2];
        index += 1;
        index2 += 1;
    }

    for i in start...end {
        nums[i] = result[i-start];
    }
}

func inPlaceMerage(nums:inout [Int], start: Int, end: Int) {
    let middle = (start + end)/2
    var index1 = start;
    let index2 = middle + 1;
    //先将右区间的数字插入与左区间交换,此步骤类似插入操作，不过元素是交换的不是插入的，交换后左区间判断是否需要插入排序.
    
    while index1 <= middle && index2 <= end {
        if nums[index1] <= nums[index2] {
            index1 += 1;
        } else {
            nums.swapAt(index1, index2);
            if index2 != end {
                var index = index2;
                let val = nums[index]; // 采用移位
                while index < end && nums[index + 1] < nums[index] {
                    nums[index] = nums[index + 1];
                    index += 1;
                }
                nums[index] = val;
            }
        }
    }
}

var arr = [1, 3, 2,3,5,3,6,9,12,7];
merageSort(nums: &arr, start: 0, end: arr.count - 1, useInPlace: true);
print(arr);
