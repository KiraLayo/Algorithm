//
//  main.swift
//  168. Excel表列名称
//
//  Created by YP-21031 on 2022/2/10.
//  Copyright © 2022 KiraLayo. All rights reserved.
//
//168. Excel表列名称
//给你一个整数 columnNumber ，返回它在 Excel 表中相对应的列名称。
//
//例如：
//
//A -> 1
//B -> 2
//C -> 3
//...
//Z -> 26
//AA -> 27
//AB -> 28
//...
//
//
//示例 1：
//
//输入：columnNumber = 1
//输出："A"
//示例 2：
//
//输入：columnNumber = 28
//输出："AB"
//示例 3：
//
//输入：columnNumber = 701
//输出："ZY"
//示例 4：
//
//输入：columnNumber = 2147483647
//输出："FXSHRXW"
//
//
//提示：
//
//1 <= columnNumber <= 231 - 1

import Foundation

class Solution {
    func convertToTitle(_ columnNumber: Int) -> String {
        var res = ""
        var n = columnNumber
        while n != 0 {
            
            n -= 1;
            res += asciiVal(num: n % 26)
            n /= 26
        }
        
        return String(res.reversed());
    }
    
    func asciiVal(num: Int) -> String {
        let asciiVal = Character("A").asciiValue! + UInt8(num);
        return String(Character(UnicodeScalar(asciiVal)))
    }
}

