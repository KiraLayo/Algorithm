//
//  main.swift
//  606.Tree2str
//
//  Created by yp-tc-m-2548 on 2021/3/10.
//  Copyright © 2021 KiraLayo. All rights reserved.
//
//606. 根据二叉树创建字符串
//你需要采用前序遍历的方式，将一个二叉树转换成一个由括号和整数组成的字符串。
//
//空节点则用一对空括号 "()" 表示。而且你需要省略所有不影响字符串与原始二叉树之间的一对一映射关系的空括号对。
//
//示例 1:
//
//输入: 二叉树: [1,2,3,4]
//       1
//     /   \
//    2     3
//   /
//  4
//
//输出: "1(2(4))(3)"
//
//解释: 原本将是“1(2(4)())(3())”，
//在你省略所有不必要的空括号对之后，
//它将是“1(2(4))(3)”。
//示例 2:
//
//输入: 二叉树: [1,2,3,null,4]
//       1
//     /   \
//    2     3
//     \
//      4
//
//输出: "1(2()(4))(3)"
//
//解释: 和第一个示例相似，
//除了我们不能省略第一个对括号来中断输入和输出之间的一对一映射关系。

import Foundation
import ShareModule

/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.left = nil
 *         self.right = nil
 *     }
 * }
 */
class Solution {
    func tree2str(_ t: TreeNode?) -> String {
        if t == nil {
            return "";
        } else if t!.left == nil && t!.right == nil {
            return String(t!.val);
        } else if t!.right == nil {
            return String(t!.val) + "(" + tree2str(t!.left) + ")";
        }
        return String(t!.val)+"("+tree2str(t!.left)+")("+tree2str(t!.right)+")";
    }
}
