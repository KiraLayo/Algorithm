//
//  main.swift
//  412. Fizz Buzz
//
//  Created by YP-21031 on 2022/2/23.
//  Copyright © 2022 KiraLayo. All rights reserved.
//
//412. Fizz Buzz
//给你一个整数 n ，找出从 1 到 n 各个整数的 Fizz Buzz 表示，并用字符串数组 answer（下标从 1 开始）返回结果，其中：
//
//answer[i] == "FizzBuzz" 如果 i 同时是 3 和 5 的倍数。
//answer[i] == "Fizz" 如果 i 是 3 的倍数。
//answer[i] == "Buzz" 如果 i 是 5 的倍数。
//answer[i] == i （以字符串形式）如果上述条件全不满足。
//
//
//示例 1：
//
//输入：n = 3
//输出：["1","2","Fizz"]
//示例 2：
//
//输入：n = 5
//输出：["1","2","Fizz","4","Buzz"]
//示例 3：
//
//输入：n = 15
//输出：["1","2","Fizz","4","Buzz","Fizz","7","8","Fizz","Buzz","11","Fizz","13","14","FizzBuzz"]
//
//
//提示：
//
//1 <= n <= 104


import Foundation

class Solution {
    func fizzBuzz(_ n: Int) -> [String] {
        var res: [String] = [];
        
        for i in 1...n {
            var str = ""
            if i % 3 == 0 {
                str += "Fizz"
            
            }
            if i % 5 == 0 {
                str += "Buzz"
            }
            
            if str.count == 0 {
                str = String(i);
            }
            res.append(str)
        }
        
        return res
    }
}

