//
//  main.swift
//  145. 二叉树的后序遍历
//
//  Created by YP-21031 on 2021/7/15.
//  Copyright © 2021 KiraLayo. All rights reserved.
//

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
    func postorderTraversal(_ root: TreeNode?) -> [Int] {
        var res: [Int] = [];
        postorder(root, &res);
        return res;
    }
    func postorder(_ root: TreeNode?, _ res: inout [Int]) {
        guard root != nil else {
            return ;
        }

        postorder(root!.left, &res);
        postorder(root!.right, &res);
        res.append(root!.val);
    }
}

