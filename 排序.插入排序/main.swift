//
//  main.swift
//  排序.插入排序
//
//  Created by yp-tc-m-2548 on 2021/4/12.
//  Copyright © 2021 KiraLayo. All rights reserved.
//

import Foundation


func insertSort(nums:inout [Int],swap: Bool = false) {
    // 从长度1开始，设定一个交换区，和临近交换区最近的一个元素，与交换区内的元素进行比较，并进行交换或者移动
    for i in 1..<nums.count {
        var preIndex = i - 1;
        if swap {
            while preIndex >= 0 && nums[preIndex + 1] < nums[preIndex]{
                nums.swapAt(preIndex, preIndex + 1);
            }
        } else {
            let currentNum = nums[i];
            while preIndex >= 0 && currentNum < nums[preIndex] {
                nums[preIndex + 1] = nums[preIndex];
                preIndex -= 1;
            }
            nums[preIndex + 1] = currentNum;
        }
    }
}

var arr = [1, 3, 2,3,5,3,6,9,12,7];
insertSort(nums: &arr, swap: true);
print(arr);
arr = [2, 1];
insertSort(nums: &arr);
print(arr);
arr = [1];
insertSort(nums: &arr);
print(arr);
