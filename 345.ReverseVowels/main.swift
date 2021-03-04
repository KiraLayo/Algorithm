//
//  main.swift
//  345.ReverseVowels
//
//  Created by yp-tc-m-2548 on 2021/3/4.
//  Copyright © 2021 KiraLayo. All rights reserved.
//
//
//345. 反转字符串中的元音字母
//编写一个函数，以字符串作为输入，反转该字符串中的元音字母。
//
//
//
//示例 1：
//
//输入："hello"
//输出："holle"
//示例 2：
//
//输入："leetcode"
//输出："leotcede"
//
//
//提示：
//
//元音字母不包含字母 "y" 。

class Solution {
    func reverseVowels(_ s: String) -> String {
        if s.count < 2 {
            return s;
        }
        let vowels = "aeiouAEIOU";
        var res = Array(s);
        var p1 = 0;
        var p2 = res.count - 1;
        
        while p1 < p2 {
            
            while p1 < p2 && !vowels.contains(res[p1]) {
                p1 += 1;
            }

            while p1 < p2 && !vowels.contains(res[p2]) {
                p2 -= 1;
            }
            
            if p1 < p2 {
                (res[p1], res[p2]) = (res[p2], res[p1])
                //            res.swapAt(p1, p2);
                p1 += 1;
                p2 -= 1;
            }
            
        }
        
        return String(res);
    }
}


//print(Solution().reverseVowels("hello"));
//print(Solution().reverseVowels(""Euston saw I was not Sue.""));
print(Solution().reverseVowels("Euston saw I was not Sue."))

