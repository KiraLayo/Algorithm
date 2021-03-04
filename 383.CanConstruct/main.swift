//
//  main.swift
//  383.CanConstruct
//
//  Created by yp-tc-m-2548 on 2021/3/4.
//  Copyright © 2021 KiraLayo. All rights reserved.
//

//383. 赎金信
//给定一个赎金信 (ransom) 字符串和一个杂志(magazine)字符串，判断第一个字符串 ransom 能不能由第二个字符串 magazines 里面的字符构成。如果可以构成，返回 true ；否则返回 false。
//
//(题目说明：为了不暴露赎金信字迹，要从杂志上搜索各个需要的字母，组成单词来表达意思。杂志字符串中的每个字符只能在赎金信字符串中使用一次。)
//
//
//
//注意：
//
//你可以假设两个字符串均只含有小写字母。
//
//canConstruct("a", "b") -> false
//canConstruct("aa", "ab") -> false
//canConstruct("aa", "aab") -> true

class Solution {
    // 双循环，本质也是双指针 O(m*n)
//    func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
//        let r = Array(ransomNote);
//        var m = Array(magazine);
//
//        for i in 0..<r.count {
//            var flgs = false;
//            for j in 0..<m.count {
//                if r[i] == m[j] {
//                    flgs = true;
//                    m.remove(at: j);
//                    break;
//                }
//            }
//            if flgs == false {
//                return false;
//            }
//        }
//
//        return true;
//    }
    
    // 计数法 O(m + n)
    func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
        var counts = Array(repeating: 0, count: 26);
        
        let aInt = Character("a").asciiValue!;
        
        for char in magazine {
            counts[Int(char.asciiValue! - aInt)] += 1;
        }
        
        for char in ransomNote {
            let index = Int(char.asciiValue! - aInt);
            counts[index] -= 1;
            if counts[index] < 0 {
                return false;
            }
        }
        
        return true;
    }
}


print(Solution().canConstruct("a", "b"))
print(Solution().canConstruct("aa", "aab"))
print(Solution().canConstruct("ab", "ab"))
print(Solution().canConstruct("abc", "ab"))
print(Solution().canConstruct("", "b"))
print(Solution().canConstruct("a", ""))
