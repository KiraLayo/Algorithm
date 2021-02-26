//
//  main.swift
//  118.Generate
//
//  Created by yp-tc-m-2548 on 2021/2/26.
//  Copyright © 2021 KiraLayo. All rights reserved.
//

//118. 杨辉三角
//给定一个非负整数 numRows，生成杨辉三角的前 numRows 行。
//
//
//
//在杨辉三角中，每个数是它左上方和右上方的数的和。
//
//示例:
//
//输入: 5
//输出:
//[
//     [1],
//    [1,1],
//   [1,2,1],
//  [1,3,3,1],
// [1,4,6,4,1]
//]

class Solution {
    func generate(_ numRows: Int) -> [[Int]] {
        var rows:[[Int]] = [[Int]]();
        
        for i in 0 ..< numRows {
            var row:[Int] = [Int](repeating: 1, count: i+1);
            for j in 1 ..< i + 1 {
                let left:Int = (i-1 >= 0 && j-1 >= 0) ? rows[i-1][j-1]:0;
                let right:Int = (i-1 >= 0 && j <= i-1) ? rows[i-1][j]:0
                row[j] = left + right;
            }
            rows.append(row);
        }
        
        return rows;
    }
}
