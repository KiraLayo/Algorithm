//
//  main.swift
//  排序.归并排序
//
//  Created by yp-tc-m-2548 on 2021/4/15.
//  Copyright © 2021 KiraLayo. All rights reserved.
//

import Foundation

func merage(nums:inout [Int], start: Int, end: Int) {
    let middle = (start + end) / 2;
    var index1 = start;
    var index2 = middle + 1;
    while index1 <= middle && index2 <= end {
        if nums[index1] <= nums[index2] {
            index1 += 1;
        } else {
            
        }
    }
}

func inPlaceMerage(nums:inout [Int], start: Int, end: Int) {
}


