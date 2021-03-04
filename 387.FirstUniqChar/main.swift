//
//  main.swift
//  387.FirstUniqChar
//
//  Created by yp-tc-m-2548 on 2021/3/4.
//  Copyright © 2021 KiraLayo. All rights reserved.
//
//387. 字符串中的第一个唯一字符
//给定一个字符串，找到它的第一个不重复的字符，并返回它的索引。如果不存在，则返回 -1。
//
//
//
//示例：
//
//s = "leetcode"
//返回 0
//
//s = "loveleetcode"
//返回 2

class Solution {
    func firstUniqChar(_ s: String) -> Int {
        if s.count == 0 {
            return -1;
        }
        if s.count == 1 {
            return 0;
        }
        var counts = [Int](repeating: 0, count: 26);
        let aChar = Character("a").asciiValue!;
        for char in s {
            counts[Int(char.asciiValue! - aChar)] += 1;
        }
        for index in s.enumerated() {
            if counts[Int(index.element.asciiValue! - aChar)] == 1 {
                return index.offset;
            }
        }
        return -1;
    }
}

print(Solution().firstUniqChar("leetcode"));
print(Solution().firstUniqChar("loveleetcode"));
print(Solution().firstUniqChar("a"));
print(Solution().firstUniqChar(""));
