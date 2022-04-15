//
//  main.swift
//  290. 单词规律
//
//  Created by YP-21031 on 2022/2/21.
//  Copyright © 2022 KiraLayo. All rights reserved.
//

//290. 单词规律
//给定一种规律 pattern 和一个字符串 s ，判断 s 是否遵循相同的规律。
//
//这里的 遵循 指完全匹配，例如， pattern 里的每个字母和字符串 str 中的每个非空单词之间存在着双向连接的对应规律。
//
//
//
//示例1:
//
//输入: pattern = "abba", str = "dog cat cat dog"
//输出: true
//示例 2:
//
//输入:pattern = "abba", str = "dog cat cat fish"
//输出: false
//示例 3:
//
//输入: pattern = "aaaa", str = "dog cat cat dog"
//输出: false
//
//
//提示:
//
//1 <= pattern.length <= 300
//pattern 只包含小写英文字母
//1 <= s.length <= 3000
//s 只包含小写英文字母和 ' '
//s 不包含 任何前导或尾随对空格
//s 中每个单词都被 单个空格 分隔

import Foundation

class Solution {
    func wordPattern(_ pattern: String, _ s: String) -> Bool {
        let parts: [Substring] = s.split(separator: " ")
        guard parts.count == pattern.count else {
            return false
        }
        let pattern:[Character] = [Character](pattern);

        var hash: [Character:Substring] = [:]
    
        for i in 0..<parts.count {
            if let part = hash[pattern[i]] {
                if part != parts[i] {
                    // 一个key有多个value情况
                    return false
                }
            } else {
                if hash.values.contains(parts[i]) {
                    // 一个value有多个key情况
                    return false
                }
                hash[pattern[i]] = parts[i];
            }
        }
        return true;
    }
}
