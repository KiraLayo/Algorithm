//
//  main.swift
//  面试题 01.02. 判定是否互为字符重排
//
//  Created by yp-tc-m-2548 on 2021/3/10.
//  Copyright © 2021 KiraLayo. All rights reserved.
//
//面试题 01.02. 判定是否互为字符重排
//给定两个字符串 s1 和 s2，请编写一个程序，确定其中一个字符串的字符重新排列后，能否变成另一个字符串。
//
//示例 1：
//
//输入: s1 = "abc", s2 = "bca"
//输出: true
//示例 2：
//
//输入: s1 = "abc", s2 = "bad"
//输出: false
//说明：
//
//0 <= len(s1) <= 100
//0 <= len(s2) <= 100
import Foundation

class Solution {
//    方法1
//    排序 + 对比
//    方法2
//    哈希表记录
    func CheckPermutation(_ s1: String, _ s2: String) -> Bool {
        guard s1.count == s2.count else {
            return false;
        }
        var permutationHash : [Character:Int] = [Character:Int]();
        for char in s1 {
            permutationHash[char, default: 0] += 1;
        }
        for char in s2 {
            permutationHash[char, default: 0] -= 1;
        }
        return !permutationHash.contains {
            $0.value != 0;
        }
    }
}

print(Solution().CheckPermutation("bca", "abc"));
print(Solution().CheckPermutation("abc", "bad"));
