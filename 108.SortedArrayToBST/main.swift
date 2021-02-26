//
//  main.swift
//  108.SortedArrayToBST
//
//  Created by yp-tc-m-2548 on 2021/2/26.
//  Copyright © 2021 KiraLayo. All rights reserved.
//
//
//108. 将有序数组转换为二叉搜索树
//给你一个整数数组 nums ，其中元素已经按 升序 排列，请你将其转换为一棵 高度平衡 二叉搜索树。
//
//高度平衡 二叉树是一棵满足「每个节点的左右两个子树的高度差的绝对值不超过 1 」的二叉树。
//
//
//
//示例 1：
//
//
//输入：nums = [-10,-3,0,5,9]
//输出：[0,-3,9,-10,null,5]
//解释：[0,-10,5,null,-3,null,9] 也将被视为正确答案：
//
//示例 2：
//
//
//输入：nums = [1,3]
//输出：[3,1]
//解释：[1,3] 和 [3,1] 都是高度平衡二叉搜索树。
//
//
//提示：
//
//1 <= nums.length <= 104
//-104 <= nums[i] <= 104
//nums 按 严格递增 顺序排列

import ShareModule

class Solution {
    func sortedArrayToBST(_ nums: [Int]) -> TreeNode? {
    if (nums.count == 0) {
            return nil;
        }
        
        let headIndex = nums.count / 2;

        let head = TreeNode(nums[headIndex]);
        if (headIndex - 1 >= 0) {
            head.left = sortedArrayToBST(Array(nums[..<headIndex]));
        }
        if (headIndex + 1 < nums.count) {
            head.right = sortedArrayToBST(Array(nums[(headIndex+1)...]));
        }
        
        return head;
    }
}
