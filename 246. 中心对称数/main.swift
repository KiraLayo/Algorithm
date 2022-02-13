//
//  main.swift
//  246. 中心对称数
//
//  Created by YP-21031 on 2022/1/18.
//  Copyright © 2022 KiraLayo. All rights reserved.
//

//246. 中心对称数
//中心对称数是指一个数字在旋转了 180 度之后看起来依旧相同的数字（或者上下颠倒地看）。
//
//请写一个函数来判断该数字是否是中心对称数，其输入将会以一个字符串的形式来表达数字。
//
//
//
//示例 1:
//
//输入: num = "69"
//输出: true
//示例 2:
//
//输入: num = "88"
//输出: true
//示例 3:
//
//输入: num = "962"
//输出: false
//示例 4：
//
//输入：num = "1"
//输出：true
//通过次数6,642提交次数13,942

import Foundation

class Solution {
    func isStrobogrammatic(_ num: String) -> Bool {
        var left = 0, right = num.count - 1;
        let map:[Character: Character] = [
            "0": "0",
            "1": "1",
            "8": "8",
            "6": "9",
            "9": "6"
        ]
        
        while left <= right {
            let leftCharacter =  num[num.index(num.startIndex, offsetBy: left)];
            let rightCharacter = num[num.index(num.startIndex, offsetBy: right)];
            if map[leftCharacter] == nil || map[rightCharacter] == nil || map[leftCharacter] != rightCharacter {
                return false;
            }
            left += 1;
            right -= 1;
        }
        return true;
    }
}

