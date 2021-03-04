//
//  main.swift
//  434.CountSegments
//
//  Created by yp-tc-m-2548 on 2021/3/4.
//  Copyright © 2021 KiraLayo. All rights reserved.
//
//434. 字符串中的单词数
//统计字符串中的单词个数，这里的单词指的是连续的不是空格的字符。
//
//请注意，你可以假定字符串里不包括任何不可打印的字符。
//
//示例:
//
//输入: "Hello, my name is John"
//输出: 5
//解释: 这里的单词是指连续的不是空格的字符，所以 "Hello," 算作 1 个单词。

class Solution {
    func countSegments(_ s: String) -> Int {
        var res = 0;
        var wCount = 0;
        for char in s {
            if char == " " && wCount > 0{
                res += 1;
                wCount = 0;
            } else if char != " " {
                wCount += 1;
            }
        }
        
        if wCount > 0 {
            res += 1;
        }
        
        return res;
    }
}

print(Solution().countSegments("Hello, my name is John"));
