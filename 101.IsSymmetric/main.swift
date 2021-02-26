//
//  main.swift
//  101.IsSymmetric
//
//  Created by yp-tc-m-2548 on 2021/2/26.
//  Copyright © 2021 KiraLayo. All rights reserved.
//
//101. 对称二叉树
//
//给定一个二叉树，检查它是否是镜像对称的。
//
//
//例如，二叉树 [1,2,2,3,4,4,3] 是对称的。
//
//    1
//   / \
//  2   2
// / \ / \
//3  4 4  3
//
//
//但是下面这个 [1,2,2,null,3,null,3] 则不是镜像对称的:
//
//    1
//   / \
//  2   2
//   \   \
//   3    3
//
//来源：力扣（LeetCode）
//链接：https://leetcode-cn.com/problems/symmetric-tree
//著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
import ShareModule

class Solution {
    func isSymmetric(_ root: TreeNode?) -> Bool {
        if root == nil {
            return true;
        }
        
        let left  = root!.left;
        let right = root!.right;
        
        return symmetric(left, right);
    }
    
    func symmetric(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
        if p == nil && q == nil {
            return true;
        }
        
        if p == nil || q == nil {
            return false;
        }
        
        return (p!.val == q!.val) && symmetric(p!.left, q!.right) && symmetric(p!.right, q!.left);
    }
}

