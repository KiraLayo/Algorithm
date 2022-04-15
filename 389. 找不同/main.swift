//
//  main.swift
//  389. 找不同
//
//  Created by YP-21031 on 2022/2/23.
//  Copyright © 2022 KiraLayo. All rights reserved.
//
//389. 找不同
//给定两个字符串 s 和 t ，它们只包含小写字母。
//
//字符串 t 由字符串 s 随机重排，然后在随机位置添加一个字母。
//
//请找出在 t 中被添加的字母。
//
//
//
//示例 1：
//
//输入：s = "abcd", t = "abcde"
//输出："e"
//解释：'e' 是那个被添加的字母。
//示例 2：
//
//输入：s = "", t = "y"
//输出："y"
//
//
//提示：
//
//0 <= s.length <= 1000
//t.length == s.length + 1
//s 和 t 只包含小写字母
import Foundation

class Solution {
    func findTheDifference(_ s: String, _ t: String) -> Character {
        guard s.count != 0 else {
            return t.first!
        }
        
        var sum = 0
        
        for i in t {
            sum += Int(i.asciiValue!)
        }
        
        for i in s {
            sum -= Int(i.asciiValue!)
        }
        
        return Character(Unicode.Scalar(sum)!);
    }
}

print(Solution().findTheDifference("abcd", "abccd"))
