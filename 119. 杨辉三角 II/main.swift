//
//  main.swift
//  119. 杨辉三角 II
//
//  Created by YP-21031 on 2021/5/31.
//  Copyright © 2021 KiraLayo. All rights reserved.
//

//给定一个非负索引 k，其中 k ≤ 33，返回杨辉三角的第 k 行。
//
//
//
//在杨辉三角中，每个数是它左上方和右上方的数的和。
//
//
//1:[1],
//2:[1,1],
//3:[1,2,1],
//4:[1,3,3,1],
//5:[1,4,6,4,1],
//6:[1,5,10,10,5,1]
//
//
//示例:
//
//输入: 3
//输出: [1,3,3,1]
//进阶：
//
//你可以优化你的算法到 O(k) 空间复杂度吗？
//
//来源：力扣（LeetCode）
//链接：https://leetcode-cn.com/problems/pascals-triangle-ii
//著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。

class Solution {
    func getRow(_ rowIndex: Int) -> [Int] {
        let count = rowIndex + 1;
        var res: [Int] = Array(repeating: 0, count: count);
        res[0] = 1;
        for i in 1 ..< count {
            for j in stride(from: i, to: 0, by: -1) {
                res[j] += res[j-1];
            }
        }
        
        return res;
    }
}
