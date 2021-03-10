//
//  main.swift
//  680.ValidPalindrome
//
//  Created by yp-tc-m-2548 on 2021/3/10.
//  Copyright © 2021 KiraLayo. All rights reserved.
//
//680. 验证回文字符串 Ⅱ
//给定一个非空字符串 s，最多删除一个字符。判断是否能成为回文字符串。
//
//示例 1:
//
//输入: "aba"
//输出: True
//示例 2:
//
//输入: "abca"
//输出: True
//解释: 你可以删除c字符。
//注意:
//
//字符串只包含从 a-z 的小写字母。字符串的最大长度是50000。

import Foundation

class Solution {
    func validPalindrome(_ s: String) -> Bool {
        var left = s.startIndex;
        var right = s.index(before: s.endIndex);
        
        while left < right {
            if s[left] == s[right] {
                left = s.index(after: left);
                right = s.index(before: right);
            } else {
                return self.validPalindrome(s, s.index(after: left), right) || self.validPalindrome(s, left, s.index(before: right));
            }
        }
        
        return true;
    }
    
    func validPalindrome(_ s: String, _ left: String.Index, _ right: String.Index) -> Bool {
        
        var l = left;
        var r = right
        
        while l < r {
            if s[l] == s[r] {
                l = s.index(after: l);
                r = s.index(before: r);
            } else {
                return false;
            }
        }
        
        return true;
    }
}

//print(Solution().validPalindrome("aba"));
//print(Solution().validPalindrome("abcca"));
print(Solution().validPalindrome("eeccccbebaeeabebccceea"));
