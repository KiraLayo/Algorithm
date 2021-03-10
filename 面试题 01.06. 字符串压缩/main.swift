//
//  main.swift
//  面试题 01.06. 字符串压缩
//
//  Created by yp-tc-m-2548 on 2021/3/10.
//  Copyright © 2021 KiraLayo. All rights reserved.
//

//面试题 01.06. 字符串压缩
//字符串压缩。利用字符重复出现的次数，编写一种方法，实现基本的字符串压缩功能。比如，字符串aabcccccaaa会变为a2b1c5a3。若“压缩”后的字符串没有变短，则返回原先的字符串。你可以假设字符串中只包含大小写英文字母（a至z）。
//
//示例1:
//
// 输入："aabcccccaaa"
// 输出："a2b1c5a3"
//示例2:
//
// 输入："abbccd"
// 输出："abbccd"
// 解释："abbccd"压缩后为"a1b2c2d1"，比原字符串长度更长。
//提示：
//
//字符串长度在[0, 50000]范围内。

import Foundation

class Solution {
    func compressString(_ S: String) -> String {
        guard !S.isEmpty else {
            return "";
        }
        var compressStr = "";
        
        var p1 = S.startIndex;
        var p2 = p1;
        var compressCount = 0;
        
        while p1 != S.endIndex && p2 != S.endIndex {
            if S[p1] == S[p2] {
                compressCount += 1;
                p2 = S.index(after: p2);
            } else {
                compressStr += "\(S[p1])\(compressCount)";
                p1 = p2;
                compressCount = 0;
            }
        }
        
        compressStr += "\(S[p1])\(compressCount)";
        
        return compressStr.count >= S.count ? S : compressStr;
    }
}


print(Solution().compressString("aabcccccaaa"))
print(Solution().compressString("abbccd"))
print(Solution().compressString(""))
