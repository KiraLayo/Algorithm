//
//  main.swift
//  242. 有效的字母异位词
//
//  Created by YP-21031 on 2022/2/13.
//  Copyright © 2022 KiraLayo. All rights reserved.
//

//242. 有效的字母异位词
//给定两个字符串 s 和 t ，编写一个函数来判断 t 是否是 s 的字母异位词。
//
//注意：若 s 和 t 中每个字符出现的次数都相同，则称 s 和 t 互为字母异位词。
//
//
//
//示例 1:
//
//输入: s = "anagram", t = "nagaram"
//输出: true
//示例 2:
//
//输入: s = "rat", t = "car"
//输出: false
//
//
//提示:
//
//1 <= s.length, t.length <= 5 * 104
//s 和 t 仅包含小写字母
//
//
//进阶: 如果输入字符串包含 unicode 字符怎么办？你能否调整你的解法来应对这种情况？

import Foundation

class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        guard s.count == t.count else {
            return false
        }
        let s = Array(s);
        let t = Array(t)
        
        var hash: [Character:Int] = [:]
        
        for i in s {
            hash[i, default: 0] += 1
        }

        for i in t {
            hash[i, default: 0] -= 1
            if hash[i]! < 0 {
                return false;
            }
        }
        
        return true;
    }
}
