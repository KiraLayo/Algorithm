//
//  main.swift
//  102. 二叉树的层序遍历
//
//  Created by YP-21031 on 2021/7/15.
//  Copyright © 2021 KiraLayo. All rights reserved.
//
//
//  给你一个二叉树，请你返回其按 层序遍历 得到的节点值。 （即逐层地，从左到右访问所有节点）。
//
//
//
//  示例：
//  二叉树：[3,9,20,null,null,15,7],
//
//    3
//   / \
//  9  20
//    /  \
//   15   7
//  返回其层序遍历结果：
//
//[
//  [3],
//  [9,20],
//  [15,7]
//]
//
//来源：力扣（LeetCode）
//链接：https://leetcode-cn.com/problems/binary-tree-level-order-traversal
//著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。

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
    func levelOrder(_ root: TreeNode?) -> [[Int]] {
        guard root != nil else {
            return []
        }
        
        var stack: [TreeNode] = [root!];
        var intStack: [TreeNode] = [];
        var res: [[Int]] = [];
        
        while stack.count != 0 {
            var temp: [Int] = [];
            var tempStack: [TreeNode] = [];
            stack.forEach {
                temp.append($0.val);
                if let left = $0.left {
                    tempStack.append(left);
                }
                if let right = $0.right {
                    tempStack.append(right);
                }
            }
            res.append(temp);
            stack = [];
            stack.append(contentsOf: tempStack);
        }
        
        return res;
    }
}
