//
//  main.swift
//  排序.选择排序
//
//  Created by yp-tc-m-2548 on 2021/4/12.
//  Copyright © 2021 KiraLayo. All rights reserved.
//

import Foundation

func selectionSort(nums:inout [Int]) {
    let count = nums.count;
    var minIndex: Int;
    var maxIndex: Int; // 优化，采取双向计算
    for i in 0..<count {
        minIndex = i; // 这里相同index是为了方便后续直接判断是否序列已经排序
        maxIndex = i;
        for j in i..<count {
            if nums[minIndex] > nums[j] {
                minIndex = j;
            }
            if nums[maxIndex] < nums[j] {
                maxIndex = j;
            }
        }
        
        if minIndex == maxIndex {
            break;
        }
        
        nums.swapAt(i, minIndex);
        if maxIndex == i { // 这里i 与 minIndex已经交换
            maxIndex = minIndex;
        }
        nums.swapAt(count - 1 - i, maxIndex);
    }
}
