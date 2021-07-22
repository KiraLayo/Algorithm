//
//  main.swift
//  106. 从中序与后序遍历序列构造二叉树
//
//  Created by YP-21031 on 2021/7/16.
//  Copyright © 2021 KiraLayo. All rights reserved.
//
//106. 从中序与后序遍历序列构造二叉树
//根据一棵树的中序遍历与后序遍历构造二叉树。
//
//注意:
//你可以假设树中没有重复的元素。
//
//例如，给出
//
//中序遍历 inorder = [9,3,15,20,7]
//后序遍历 postorder = [9,15,7,20,3]
//返回如下的二叉树：
//
//    3
//   / \
//  9  20
//    /  \
//   15   7


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
    func buildTree(_ inorder: [Int], _ postorder: [Int]) -> TreeNode? {
        if !(inorder.count == postorder.count && inorder.count != 0 ) {
            return nil;
        }
        
        if inorder.count == 1 {
            return TreeNode(inorder[0]);
        }
        
        let inCount = inorder.count;
        let postCount = postorder.count;
        
        let root: TreeNode = TreeNode(postorder[inCount - 1]);
        let inorderRootIndex = inorder.firstIndex(of: root.val)!;

        let leftCount = inorderRootIndex;
        let rightCount = inCount - 1 - leftCount;
            
        if leftCount != 0 {
            root.left = buildTree([Int](inorder[..<inorderRootIndex]), [Int](postorder[..<leftCount]));
        }
        
        if rightCount != 0 {
            root.right = buildTree([Int](inorder[(inorderRootIndex+1)...]), [Int](postorder[leftCount..<(postCount - 1)]));
        }

        return root;
    }
}
