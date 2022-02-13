//
//  main.swift
//  653. 两数之和 IV - 输入 BST
//
//  Created by YP-21031 on 2022/2/7.
//  Copyright © 2022 KiraLayo. All rights reserved.
//

//653. 两数之和 IV - 输入 BST
//给定一个二叉搜索树 root 和一个目标结果 k，如果 BST 中存在两个元素且它们的和等于给定的目标结果，则返回 true。
//
//
//
//示例 1：
//
//
//输入: root = [5,3,6,2,4,null,7], k = 9
//输出: true
//示例 2：
//
//
//输入: root = [5,3,6,2,4,null,7], k = 28
//输出: false
//
//
//提示:
//
//二叉树的节点个数的范围是  [1, 104].
//-104 <= Node.val <= 104
//root 为二叉搜索树
//-105 <= k <= 105


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
    func findTarget(_ root: TreeNode?, _ k: Int) -> Bool {
        guard root != nil else {
            return false
        }
        
        var list:[Int] = [];
        
        inorder(root, &list);
        
        var left = 0, right = list.count - 1;
        
        while left < right {
            let sum = list[left] + list[right];
            if sum > k {
                right -= 1;
            } else if sum < k {
                left += 1 
            } else {
                return true;
            }
        }
        
        return false;
    }
    
    func inorder(_ node: TreeNode?, _ list: inout [Int]) {
        guard node != nil else {
            return
        }
        
        inorder(node!.left, &list);
        list.append(node!.val);
        inorder(node!.right, &list);
    }
}
