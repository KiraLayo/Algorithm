//
//  main.swift
//  剑指 Offer 58 - II. 左旋转字符串
//
//  Created by yp-tc-m-2548 on 2021/3/10.
//  Copyright © 2021 KiraLayo. All rights reserved.
//
//剑指 Offer 58 - II. 左旋转字符串
//字符串的左旋转操作是把字符串前面的若干个字符转移到字符串的尾部。请定义一个函数实现字符串左旋转操作的功能。比如，输入字符串"abcdefg"和数字2，该函数将返回左旋转两位得到的结果"cdefgab"。
//
//
//
//示例 1：
//
//输入: s = "abcdefg", k = 2
//输出: "cdefgab"
//示例 2：
//
//输入: s = "lrloseumgh", k = 6
//输出: "umghlrlose"
//
//
//限制：
//
//1 <= k < s.length <= 10000
import Foundation

class Solution {
    func reverseLeftWords(_ s: String, _ n: Int) -> String {
        if n > s.count {
            return s;
        }
        
        return String(s[s.index(s.startIndex, offsetBy: n)...] + s[..<s.index(s.startIndex, offsetBy: n)] );
    }
}

print(Solution().reverseLeftWords("abcdefg", 2));
print(Solution().reverseLeftWords("lrloseumgh", 6));
