//
//  main.swift
//  67.AddBinary
//
//  Created by yp-tc-m-2548 on 2021/3/4.
//  Copyright © 2021 KiraLayo. All rights reserved.
//

//67. 二进制求和
//给你两个二进制字符串，返回它们的和（用二进制表示）。
//
//输入为 非空 字符串且只包含数字 1 和 0。
//
//
//
//示例 1:
//
//输入: a = "11", b = "1"
//输出: "100"
//示例 2:
//
//输入: a = "1010", b = "1011"
//输出: "10101"
//
//
//提示：
//
//每个字符串仅由字符 '0' 或 '1' 组成。
//1 <= a.length, b.length <= 10^4
//字符串如果不是 "0" ，就都不含前导零。

class Solution {
    func addBinary(_ a: String, _ b: String) -> String {
        if a.count == 0 {
            return b;
        }
        
        if b.count == 0 {
            return a;
        }
        
        let aStr = Array(a);
        let bStr = Array(b);
        
        let zero = Character("0").asciiValue!;
        
        var res = [Character](repeating: "0", count: max(aStr.count, bStr.count));
        var increase:UInt8 = 0;
        let sub = abs(aStr.count - bStr.count);
        
        for index in (0 ..< res.count).reversed() {
            let aIndex = res.count == aStr.count ? index : index - sub;
            let bIndex = res.count == bStr.count ? index : index - sub;
            
            let aNum = aIndex >= 0 ? aStr[aIndex].asciiValue! - zero : 0;
            let bNum = bIndex >= 0 ? bStr[bIndex].asciiValue! - zero : 0;
            
            res[index] = aNum ^ bNum ^ increase > 0 ? "1" : "0";
            
            increase = (aNum + bNum + increase) > 1 ? 1 : 0;
        }
        
        if increase > 0 {
            res.insert("1", at: 0);
        }
        
        return String(res);
    }
}

print(Solution().addBinary("11", "1"));
print(Solution().addBinary("1010", "1011"));
print(Solution().addBinary("1", "111"));

