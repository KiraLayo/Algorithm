//
//  main.swift
//  349. 两个数组的交集
//
//  Created by YP-21031 on 2022/1/24.
//  Copyright © 2022 KiraLayo. All rights reserved.
//


//349. 两个数组的交集
//给定两个数组，编写一个函数来计算它们的交集。
//
//
//
//示例 1：
//
//输入：nums1 = [1,2,2,1], nums2 = [2,2]
//输出：[2]
//示例 2：
//
//输入：nums1 = [4,9,5], nums2 = [9,4,9,8,4]
//输出：[9,4]
//
//
//说明：
//
//输出结果中的每个元素一定是唯一的。
//我们可以不考虑输出结果的顺序。

import Foundation


class Solution {
    func intersection(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        var map: [Int: Int] = [:];
        let smaller = nums1.count > nums2.count ? nums2 : nums1;
        
        for item in smaller {
            map[item, default: 0] += 1;
        }
        
        return getIntersection(&map, nums2 != smaller ? nums2: nums1);
    }
    
    func getIntersection(_ map: inout [Int:Int], _ nums: [Int]) -> [Int] {
        
        var res: [Int] = [];
        
        for item in nums {
            if let itemCount = map[item] , itemCount > 0 {
                res.append(item);
                map[item] = -1;
            }
        }
        
        return res
    }
}

print(Solution().intersection([1,2,2,1],  [2,2]))

