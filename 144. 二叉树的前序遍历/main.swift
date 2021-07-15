//
//  main.swift
//  144. 二叉树的前序遍历
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
    func preorderTraversal(_ root: TreeNode?) -> [Int] {
        var res :[Int] = [];
        preorder(root, &res);
        return res;
    }

    func preorder(_ root: TreeNode?, _ array: inout [Int]) {
        guard root != nil else {
            return;
        }
        array.append(root!.val);
        preorder(root!.left, &array);
        preorder(root!.right, &array);
    }
}
