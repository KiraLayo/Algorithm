//
//  main.swift
//  171.TitleToNumber
//
//  Created by yp-tc-m-2548 on 2021/3/1.
//  Copyright © 2021 KiraLayo. All rights reserved.
//

//171. Excel表列序号
//给定一个Excel表格中的列名称，返回其相应的列序号。
//
//例如，
//
//    A -> 1
//    B -> 2
//    C -> 3
//    ...
//    Z -> 26
//    AA -> 27
//    AB -> 28
//    ...
//示例 1:
//
//输入: "A"
//输出: 1
//示例 2:
//
//输入: "AB"
//输出: 28
//示例 3:
//
//输入: "ZY"
//输出: 701

class Solution {
    func titleToNumber(_ s: String) -> Int {
        if s.isEmpty {
            return 0;
        }
        var res = 0;
        let startIndex = Character("A").asciiValue!;
        for char in s {
            res *= 26;
            res += Int(char.asciiValue! - startIndex) + 1;
        }
        return res;
    }
}

print(Solution().titleToNumber("ZY"));
print(Solution().titleToNumber("AB"));
