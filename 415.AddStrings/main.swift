//
//  main.swift
//  415.AddStrings
//
//  Created by yp-tc-m-2548 on 2021/3/4.
//  Copyright © 2021 KiraLayo. All rights reserved.
//

//415. 字符串相加
//给定两个字符串形式的非负整数 num1 和num2 ，计算它们的和。
//
//
//
//提示：
//
//num1 和num2 的长度都小于 5100
//num1 和num2 都只包含数字 0-9
//num1 和num2 都不包含任何前导零
//你不能使用任何內建 BigInteger 库， 也不能直接将输入的字符串转换为整数形式

class Solution {
    func addStrings(_ num1: String, _ num2: String) -> String {
        let zeroChar = Character("0").asciiValue!;

        let num1Arr = Array(num1);
        let num2Arr = Array(num2);
        
        var i = num1.count - 1;
        var j = num2.count - 1;
        
        var res = "";
        var increase = 0;
        
        while i >= 0 || j >= 0 {
            if i >= 0 {
                increase += Int(num1Arr[i].asciiValue! - zeroChar);
            }
            if j >= 0 {
                increase += Int(num2Arr[j].asciiValue! - zeroChar);
            }
            res = String(increase%10) + res;
            increase = increase / 10;
            
            i -= 1;
            j -= 1;
        }
        
        if increase > 0 {
            res = "1" + res;
        }
        
        return res;
    }
}

print(Solution().addStrings("90", "9"));
print(Solution().addStrings("90", "9"));
print(Solution().addStrings("90", "9"));
