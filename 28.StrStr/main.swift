//
//  main.swift
//  28.StrStr
//
//  Created by yp-tc-m-2548 on 2021/2/23.
//  Copyright © 2021 KiraLayo. All rights reserved.
//
//实现 strStr() 函数。
//
//给定一个 haystack 字符串和一个 needle 字符串，在 haystack 字符串中找出 needle 字符串出现的第一个位置 (从0开始)。如果不存在，则返回  -1。
//
//示例 1:
//
//输入: haystack = "hello", needle = "ll"
//输出: 2
//示例 2:
//
//输入: haystack = "aaaaa", needle = "bba"
//输出: -1
//说明:
//
//当 needle 是空字符串时，我们应当返回什么值呢？这是一个在面试中很好的问题。
//
//对于本题而言，当 needle 是空字符串时我们应当返回 0 。这与C语言的 strstr() 以及 Java的 indexOf() 定义相符。
//
//来源：力扣（LeetCode）
//链接：https://leetcode-cn.com/problems/implement-strstr
//著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
import Foundation

class Solution {
    func strStr(_ haystack: String, _ needle: String) -> Int {
        if (needle.count == 0) {
            return 0;
        }
        if (haystack.count < needle.count) {
            return -1;
        }
        
        var p1Index = 0;
        var p2Index = 0;
        while p1Index <= haystack.count - needle.count {
            if haystack[haystack.index(haystack.startIndex, offsetBy: p1Index)] != needle[needle.index(needle.startIndex, offsetBy: 0)] {
                p1Index += 1;
                p2Index = 0;
            } else {
                if (haystack[haystack.index(haystack.startIndex, offsetBy: p1Index + needle.count - 1)] != needle[needle.index(needle.startIndex, offsetBy: needle.count - 1)]) {
                    p1Index += 1;
                    p2Index = 0;
                    continue;
                }
                while p2Index < needle.count && haystack[haystack.index(haystack.startIndex, offsetBy: p1Index + p2Index)] == needle[needle.index(needle.startIndex, offsetBy: p2Index)] {
                    
                    p2Index += 1;
                }
            
                if (p2Index == needle.count) {
                    return p1Index;
                }
                
                p1Index += 1;
                p2Index = 0;
            }
        }
        return -1;
    }
}

print(Solution().strStr("aabaaabaab", "aabaab"));
print(Solution().strStr("hello", "el"));
print(Solution().strStr("aaaaa", "bba"));
