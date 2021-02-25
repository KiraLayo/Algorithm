//
//  main.swift
//  125.IsPalindrome
//
//  Created by yp-tc-m-2548 on 2021/2/23.
//  Copyright © 2021 KiraLayo. All rights reserved.
//
//125. 验证回文串
//给定一个字符串，验证它是否是回文串，只考虑字母和数字字符，可以忽略字母的大小写。
//
//说明：本题中，我们将空字符串定义为有效的回文串。
//
//示例 1:
//
//输入: "A man, a plan, a canal: Panama"
//输出: true
//示例 2:
//
//输入: "race a car"
//输出: false
//
//来源：力扣（LeetCode）
//链接：https://leetcode-cn.com/problems/valid-palindrome
//著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
import Foundation

class Solution {
    func isPalindrome(_ s: String) -> Bool {
        if (s.count < 2) {
            return true;
        }
        
        let ls = Array(s.lowercased());
        
        var lIndex = 0;
        var rIndex = ls.count - 1;
        while lIndex <= rIndex {
            let lC = ls[lIndex];
            let rC = ls[rIndex];
            if !(lC.isLetter || lC.isNumber) {
                lIndex += 1;
                continue;
            }
            if !(rC.isLetter || rC.isNumber) {
                rIndex -= 1;
                continue;
            }
            
            if (lC != rC) {
                 return false;
            }
            rIndex -= 1;
            lIndex += 1;
        }
        return true;
    }
}

print(Solution().isPalindrome("A man, a plan, a canal: Panama"));
print(Solution().isPalindrome("race a car"));
