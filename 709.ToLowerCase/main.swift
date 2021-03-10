//
//  main.swift
//  709.ToLowerCase
//
//  Created by yp-tc-m-2548 on 2021/3/10.
//  Copyright © 2021 KiraLayo. All rights reserved.
//
//709. 转换成小写字母
//实现函数 ToLowerCase()，该函数接收一个字符串参数 str，并将该字符串中的大写字母转换成小写字母，之后返回新的字符串。
//
//
//
//示例 1：
//
//输入: "Hello"
//输出: "hello"
//示例 2：
//
//输入: "here"
//输出: "here"
//示例 3：
//
//输入: "LOVELY"
//输出: "lovely"
import Foundation

class Solution {
    func toLowerCase(_ str: String) -> String {
        return String(str.map { Character(Unicode.Scalar($0.asciiValue! | 32))});
    }
}

print(Solution().toLowerCase("Dsda"));
