//
//  main.swift
//  520.DetectCapitalUse
//
//  Created by yp-tc-m-2548 on 2021/3/9.
//  Copyright © 2021 KiraLayo. All rights reserved.
//

//520. 检测大写字母
//给定一个单词，你需要判断单词的大写使用是否正确。
//
//我们定义，在以下情况时，单词的大写用法是正确的：
//
//全部字母都是大写，比如"USA"。
//单词中所有字母都不是大写，比如"leetcode"。
//如果单词不只含有一个字母，只有首字母大写， 比如 "Google"。
//否则，我们定义这个单词没有正确使用大写字母。
//
//示例 1:
//
//输入: "USA"
//输出: True
//示例 2:
//
//输入: "FlaG"
//输出: False

import Foundation

class Solution {
    func detectCapitalUse(_ word: String) -> Bool {
        var compareArr:[Bool] = [Bool](repeating: false, count: word.count);
        
        let aLow = Character("a").asciiValue!;
        
        for char in word.enumerated() {
            if char.element.asciiValue! < aLow {
                compareArr[char.offset] = true;
            }
        }
        var count = 0;
        for item in compareArr {
            if item {
                count += 1;
            }
        }
        return (count == 1 && compareArr[0]) || count == 0 || count == compareArr.count;
    }
    
    func detectCapitalUse2(_ word: String) -> Bool {
        let aLow = Character("a").asciiValue!;
        var upCount = 0;
        var lastUpIndex = 0;
        for char in word.enumerated() {
            if char.element.asciiValue! < aLow {
                upCount += 1;
                lastUpIndex = char.offset;
            }
        }
        
        return (upCount == 1 && lastUpIndex == 0) || upCount == 0 || upCount == word.count;
    }
    
}


print(Solution().detectCapitalUse2("USA"))
print(Solution().detectCapitalUse2("FlaG"))
print(Solution().detectCapitalUse2("leee"))
