//
//  main.swift
//  58.LengthOfLastWord
//
//  Created by yp-tc-m-2548 on 2021/3/3.
//  Copyright © 2021 KiraLayo. All rights reserved.
//
//
//58. 最后一个单词的长度
//给你一个字符串 s，由若干单词组成，单词之间用空格隔开。返回字符串中最后一个单词的长度。如果不存在最后一个单词，请返回 0 。
//
//单词 是指仅由字母组成、不包含任何空格字符的最大子字符串。
//
//
//
//示例 1：
//
//输入：s = "Hello World"
//输出：5
//示例 2：
//
//输入：s = " "
//输出：0
//
//
//提示：
//
//1 <= s.length <= 104
//s 仅有英文字母和空格 ' ' 组成

class Solution {
    func lengthOfLastWord(_ s: String) -> Int {
        if s.count == 0 {
            return 0;
        }
        
        var res = 0;
        let str = Array(s);
        for index in (0..<str.count).reversed() {
            if str[index] != Character(" ") {
                res += 1;
            } else {
                if res > 0 {
                    break;
                }
            }
        }
        
        return res;
    }
}

print(Solution().lengthOfLastWord("Hello World"));
print(Solution().lengthOfLastWord("Hello World "));
print(Solution().lengthOfLastWord("HelloWorld"));
print(Solution().lengthOfLastWord("  "));
print(Solution().lengthOfLastWord("a "));

