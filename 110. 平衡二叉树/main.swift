//
//  main.swift
//  110. 平衡二叉树
//
//  Created by 文启政 on 2021/5/12.
//  Copyright © 2021 KiraLayo. All rights reserved.
//

//110. 平衡二叉树
//给定一个二叉树，判断它是否是高度平衡的二叉树。
//
//本题中，一棵高度平衡二叉树定义为：
//
//一个二叉树每个节点 的左右两个子树的高度差的绝对值不超过 1 。
//
//
//
//示例 1：
//
//
//输入：root = [3,9,20,null,null,15,7]
//输出：true
//示例 2：
//
//
//输入：root = [1,2,2,3,3,null,null,4,4]
//输出：false
//示例 3：
//
//输入：root = []
//输出：true
//
//
//提示：
//
//树中的节点数在范围 [0, 5000] 内
//-104 <= Node.val <= 104


import Foundation

import ShareModule

/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init() { self.val = 0; self.left = nil; self.right = nil; }
 *     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
 *     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
 *         self.val = val
 *         self.left = left
 *         self.right = right
 *     }
 * }
 */
class Solution {
    func isBalanced(_ root: TreeNode?) -> Bool {
        return height(root) != -1;
    }
    
    func height(_ root: TreeNode?) -> Int {
        guard root != nil else {
            return 0;
        }
        let left = height(root?.left);
        guard left != -1 else {
            return -1;
        }
        let right = height(root?.right);
        guard right != -1 else {
            return -1;
        }
        guard abs(right-left) <= 1 else {
            return -1;
        }
        
        return max(left, right) + 1;
    }
}
