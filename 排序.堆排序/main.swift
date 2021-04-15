//
//  main.swift
//  排序.堆排序
//
//  Created by yp-tc-m-2548 on 2021/4/14.
//  Copyright © 2021 KiraLayo. All rights reserved.
//

import Foundation
//调整堆
func balanceHeap(nums:inout [Int], i: Int, size: Int){
    let l = 2 * i + 1;
    let r = l + 1;
    var largest = i;
    
    if l < size && nums[l] > nums[largest] {
        largest = l;
    }
    
    if r < size && nums[r] > nums[largest] {
        largest = r;
    }
    
    if largest != i {
        nums.swapAt(largest, i);
        balanceHeap(nums: &nums, i: largest, size: size);
    }
}

// 建堆
func buildHeap(nums:inout [Int]){
    let start = nums.count/2 - 1;
    for i in 0...start {
        balanceHeap(nums: &nums, i: start - i, size: nums.count);
    }
}

// 堆排序
func heapSort(nums:inout [Int]) {
    buildHeap(nums: &nums);
    let N = nums.count;
    for i in 0..<N {
        nums.swapAt(0, N - 1 - i);
        balanceHeap(nums: &nums, i: 0, size: N - 1 - i);
    }
}

var arr = [1, 3, 2,3,5,3,6,9,12,7];
heapSort(nums: &arr);
print(arr);

