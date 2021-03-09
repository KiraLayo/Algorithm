//
//  main.swift
//  459.RepeatedSubstringPattern
//
//  Created by yp-tc-m-2548 on 2021/3/9.
//  Copyright © 2021 KiraLayo. All rights reserved.
//

//459. 重复的子字符串
//给定一个非空的字符串，判断它是否可以由它的一个子串重复多次构成。给定的字符串只含有小写英文字母，并且长度不超过10000。
//
//示例 1:
//
//输入: "abab"
//
//输出: True
//
//解释: 可由子字符串 "ab" 重复两次构成。
//示例 2:
//
//输入: "aba"
//
//输出: False
//示例 3:
//
//输入: "abcabcabcabc"
//
//输出: True
//
//解释: 可由子字符串 "abc" 重复四次构成。 (或者子字符串 "abcabc" 重复两次构成。)

import Foundation

class Solution {
//    方法一
//    由题目可知这个重复数量肯定大于等于2，因为如果算1的话，永远是true
//    假如s由t循环组成，如果两个s拼接，掐头去尾，肯定可以找到t，否则就说明没有，
//    s == tt; tttt == xttx == xsx
    func repeatedSubstringPattern(_ s: String) -> Bool {
        if s.count <= 1 {
            return false
        }
        
        var sDouble = s + s;
        sDouble = String(sDouble[sDouble.index(after: sDouble.startIndex)...sDouble.index(sDouble.endIndex, offsetBy: -2)]);
        
        return sDouble.contains(s);
    }
//    方法二
//    通过从1开始寻找t的长度，之后通过将长度作为间隔对比遍历字符，如果对比有错，可能是t长度判断有问题，继续增加，直到n/2 则为false
    func repeatedSubstringPattern2(_ s: String) -> Bool {
        if s.count <= 1 {
            return false
        }
        var res = false;
        
        let count = s.count;
        let sArr = Array(s);
        for subCount in 1...count/2 {
            if count % subCount == 0 {
                res = true;
                for index in subCount..<count {
                    if sArr[index] != sArr[index - subCount] {
                        res = false;
                        break;
                    }
                }
                if res {
                    break;
                }
            }
        }
        
        return res;
    }
}

print(Solution().repeatedSubstringPattern2("abab"));
print(Solution().repeatedSubstringPattern2("aba"));
print(Solution().repeatedSubstringPattern2("abcabcabcabc"));
