//
//  main.swift
//  排序.冒泡排序
//
//  Created by yp-tc-m-2548 on 2021/4/12.
//  Copyright © 2021 KiraLayo. All rights reserved.
//

import Foundation

func bubbleSort( nums:inout [Int]) {
    let count = nums.count;
    var sortFlag = true; // 优化1，用于记录是否发生了交换，如果没有，则证明是已经排序了
    var lastSortIndex = count - 1; // 优化2,用于记录上次交换的位置
    for _ in 0..<count {
        sortFlag = false;
        var sortIndex = lastSortIndex;
        for j in 0..<lastSortIndex { // 这里不使用<= 是因为lastSortIndex == j, 后续比较的是j和j+1,所以index最多到j
            if nums[j] > nums[j + 1] {
                sortFlag = true;
                nums.swapAt(j, j + 1);
                sortIndex = j; //这里使用额外的变量是防止边界在循环中改变
            }
        }
        lastSortIndex = sortIndex;
        if !sortFlag {
            break
        }
    }
}
