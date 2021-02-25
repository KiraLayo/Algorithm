//
//  main.swift
//  LongestCommonPrefix
//
//  Created by yp-tc-m-2548 on 2021/2/22.
//  Copyright © 2021 KiraLayo. All rights reserved.
//

//编写一个函数来查找字符串数组中的最长公共前缀。
//
//如果不存在公共前缀，返回空字符串 ""。
//
//
//
//示例 1：
//
//输入：strs = ["flower","flow","flight"]
//输出："fl"
//示例 2：
//
//输入：strs = ["dog","racecar","car"]
//输出：""
//解释：输入不存在公共前缀。
//
//
//来源：力扣（LeetCode）
//链接：https://leetcode-cn.com/problems/longest-common-prefix
//著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。

import Foundation

class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        
        
        
        var res = "";
        if strs.count == 0 {
            return res;
        }
        for str in strs {
            if (str == "") {
                return "";
            }
            if res == "" {
                res = str;
                continue;
            } else {
                let minStr = min(str, res);
                var index = -1;
                for i in 0..<minStr.count {
                    if (str[str.index(str.startIndex, offsetBy: i)] != res[res.index(res.startIndex, offsetBy: i)]) {
                        break;
                    }
                    index = i;
                }
                if index != -1 {
                    res = String(res[...res.index(res.startIndex, offsetBy: index)]);
                } else {
                    res = "";
                    break;
                }
            }
        }
        return res;
    }
}

print(Solution().longestCommonPrefix(["","b"]));

