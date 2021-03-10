//
//  main.swift
//  557.ReverseWords
//
//  Created by yp-tc-m-2548 on 2021/3/10.
//  Copyright © 2021 KiraLayo. All rights reserved.
//

//557. 反转字符串中的单词 III
//给定一个字符串，你需要反转字符串中每个单词的字符顺序，同时仍保留空格和单词的初始顺序。
//
//
//
//示例：
//
//输入："Let's take LeetCode contest"
//输出："s'teL ekat edoCteeL tsetnoc"
//
//
//提示：
//
//在字符串中，每个单词由单个空格分隔，并且字符串中不会有任何额外的空格。

import Foundation

class Solution {
    func reverseWords(_ s: String) -> String {
        var res = "";
        var temp = "";

        var index = s.endIndex;
        
        while index != s.startIndex {
            index = s.index(before: index);
            if s[index] == " " {
                res = "\(temp) \(res)";
                temp = ""
            } else {
                temp.append(s[index]);
            }
        }
        
        res = "\(temp) \(res)";
        res.removeLast();
        
        return res;
    }
}

print(Solution().reverseWords("Let's take LeetCode contest"));
//print(Solution().reverseWords("Let's take LeetCode contest"));
