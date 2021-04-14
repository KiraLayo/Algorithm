//
//  main.swift
//  排序.希尔排序
//
//  Created by yp-tc-m-2548 on 2021/4/14.
//  Copyright © 2021 KiraLayo. All rights reserved.
//

import Foundation


func shellSort(nums:inout [Int]) {
    var gap = nums.count/2;
    
    while gap != 0 {
        for i in gap..<nums.count {
            let currentNumber = nums[i];
            var preIndex = i - gap;
            while preIndex >= 0 && currentNumber < nums[preIndex] {
                nums[preIndex + gap] = nums[preIndex];
                preIndex -= gap;
            }
            nums[preIndex + gap] = currentNumber;
        }
        gap /= 2;
    }
}

var arr = [1, 3, 2,3,5,3,6,9,12,7];
shellSort(nums: &arr);
print(arr);
