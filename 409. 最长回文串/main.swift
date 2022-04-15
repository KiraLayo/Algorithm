//
//  main.swift
//  409. 最长回文串
//
//  Created by YP-21031 on 2022/2/23.
//  Copyright © 2022 KiraLayo. All rights reserved.
//

//409. 最长回文串
//给定一个包含大写字母和小写字母的字符串 s ，返回 通过这些字母构造成的 最长的回文串 。
//
//在构造过程中，请注意 区分大小写 。比如 "Aa" 不能当做一个回文字符串。
//
//
//
//示例 1:
//
//输入:s = "abccccdd"
//输出:7
//解释:
//我们可以构造的最长的回文串是"dccaccd", 它的长度是 7。
//示例 2:
//
//输入:s = "a"
//输入:1
//示例 3:
//
//输入:s = "bb"
//输入: 2
//
//
//提示:
//
//1 <= s.length <= 2000
//s 只能由小写和/或大写英文字母组成


import Foundation

class Solution {
    func longestPalindrome(_ s: String) -> Int {
        var countMap: [Character:Int] = [:]
        for c in s {
            countMap[c, default: 0] += 1;
        }
        var res = 0;
        
        for item in countMap {
            if item.value % 2 == 0 {
                res += item.value;
            } else if res % 2 == 0, item.value % 2 != 0  {
                res += 1
            }
        }
        return res
    }
}

