//
//  main.swift
//  257. 二叉树的所有路径
//
//  Created by YP-21031 on 2022/2/13.
//  Copyright © 2022 KiraLayo. All rights reserved.
//

//257. 二叉树的所有路径
//给你一个二叉树的根节点 root ，按 任意顺序 ，返回所有从根节点到叶子节点的路径。
//
//叶子节点 是指没有子节点的节点。
//
//
//示例 1：
//
//
//输入：root = [1,2,3,null,5]
//输出：["1->2->5","1->3"]
//示例 2：
//
//输入：root = [1]
//输出：["1"]
//
//
//提示：
//
//树中节点的数目在范围 [1, 100] 内
//-100 <= Node.val <= 100

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
    func binaryTreePaths(_ root: TreeNode?) -> [String] {
        
        var res:[String] = [];
        
        appendString(root, "", &res)
        
        return res
    }
    
    func appendString(_ root: TreeNode?, _ path: String, _ res: inout [String]) {
        guard root != nil else {
            return ;
        }
        var path = path;
        path += String(root!.val)
        
        if root!.left == nil && root!.right == nil {
            res.append(path);
        } else {
            path += "->"
            appendString(root!.left, path, &res)
            appendString(root!.right, path, &res)
        }
    }
}

