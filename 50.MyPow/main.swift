//
//  main.swift
//  50.MyPow
//
//  Created by yp-tc-m-2548 on 2021/3/1.
//  Copyright © 2021 KiraLayo. All rights reserved.
//

//50. Pow(x, n)
//实现 pow(x, n) ，即计算 x 的 n 次幂函数（即，xn）。
//
//
//
//示例 1：
//
//输入：x = 2.00000, n = 10
//输出：1024.00000
//示例 2：
//
//输入：x = 2.10000, n = 3
//输出：9.26100
//示例 3：
//
//输入：x = 2.00000, n = -2
//输出：0.25000
//解释：2-2 = 1/22 = 1/4 = 0.25
//
//
//提示：
//
//-100.0 < x < 100.0
//-231 <= n <= 231-1
//-104 <= xn <= 104

class Solution {
    func myPow(_ x: Double, _ n: Int) -> Double {
        if x == 0 {
            return 0;
        }
        var res = 1.0;
        var cn = n < 0 ? -1 * n : n;
        var cx = (n < 0) ? 1/x : x;
        
        while cn > 0 {
            // 当是奇数和最后一次也就是n = 1 时成立
            if (cn % 2 == 1) {
                res *= cx;
            }
            
            cx *= cx;
            cn /= 2;
        }
        return res;
    }
}

print(Solution().myPow(2, -2));


