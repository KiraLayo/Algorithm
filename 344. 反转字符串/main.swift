//
//  main.swift
//  344. 反转字符串
//
//  Created by YP-21031 on 2021/12/26.
//  Copyright © 2021 KiraLayo. All rights reserved.
//

//344. 反转字符串
//编写一个函数，其作用是将输入的字符串反转过来。输入字符串以字符数组 s 的形式给出。
//
//不要给另外的数组分配额外的空间，你必须原地修改输入数组、使用 O(1) 的额外空间解决这一问题。
//
//
//
//示例 1：
//
//输入：s = ["h","e","l","l","o"]
//输出：["o","l","l","e","h"]
//示例 2：
//
//输入：s = ["H","a","n","n","a","h"]
//输出：["h","a","n","n","a","H"]
//
//
//提示：
//
//1 <= s.length <= 105
//s[i] 都是 ASCII 码表中的可打印字符

import Foundation

class Solution {
    func reverseString(_ s: inout [Character]) {
        var left = 0, right = s.count - 1;
        while left < right {
            s.swapAt(left, right);
            left += 1;
            right -= 1;
        }
    }
}
