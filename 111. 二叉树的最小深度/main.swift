//
//  main.swift
//  111. 二叉树的最小深度
//
//  Created by YP-21031 on 2021/5/31.
//  Copyright © 2021 KiraLayo. All rights reserved.
//

//111. 二叉树的最小深度
//给定一个二叉树，找出其最小深度。
//
//最小深度是从根节点到最近叶子节点的最短路径上的节点数量。
//
//说明：叶子节点是指没有子节点的节点。
//
//
//
//示例 1：
//
//
//输入：root = [3,9,20,null,null,15,7]
//输出：2
//示例 2：
//
//输入：root = [2,null,3,null,4,null,5,null,6]
//输出：5
//
//
//提示：
//
//树中节点数的范围在 [0, 105] 内
//-1000 <= Node.val <= 1000

import ShareModule

class Solution {
    func minDepth(_ root: TreeNode?) -> Int {
        if (root == nil) {
            return 0;
        }

        if (root!.left == nil && root!.right == nil) {
            return 1;
        }
        
        let minLeft = minDepth(root!.left);
        let minRight = minDepth(root!.right);
        
        if (root!.left == nil || root!.right == nil) {
            return 1 + minLeft + minRight;
        }

        return 1 + min(minLeft, minRight);
    }
}

