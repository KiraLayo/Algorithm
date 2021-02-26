//
//  main.swift
//  226.InvertTree
//
//  Created by yp-tc-m-2548 on 2021/2/26.
//  Copyright © 2021 KiraLayo. All rights reserved.
//

//226. 翻转二叉树
//翻转一棵二叉树。
//
//示例：
//
//输入：
//
//     4
//   /   \
//  2     7
// / \   / \
//1   3 6   9
//输出：
//
//     4
//   /   \
//  7     2
// / \   / \
//9   6 3   1
//备注:
//这个问题是受到 Max Howell 的 原问题 启发的 ：
//
//谷歌：我们90％的工程师使用您编写的软件(Homebrew)，但是您却无法在面试时在白板上写出翻转二叉树这道题，这太糟糕了。
//
//来源：力扣（LeetCode）
//链接：https://leetcode-cn.com/problems/invert-binary-tree
//著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。

import ShareModule

class Solution {
    func invertTree(_ root: TreeNode?) -> TreeNode? {
        if (root == nil) {
            return nil;
        }
        let right = invertTree(root!.right);
        let left = invertTree(root!.left);
        root?.left = right;
        root?.right = left;
        
        return root;
    }
}
