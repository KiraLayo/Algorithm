//
//  main.swift
//  202.IsHappy
//
//  Created by yp-tc-m-2548 on 2021/3/1.
//  Copyright © 2021 KiraLayo. All rights reserved.
//

//202. 快乐数
//编写一个算法来判断一个数 n 是不是快乐数。
//
//「快乐数」定义为：
//
//对于一个正整数，每一次将该数替换为它每个位置上的数字的平方和。
//然后重复这个过程直到这个数变为 1，也可能是 无限循环 但始终变不到 1。
//如果 可以变为  1，那么这个数就是快乐数。
//如果 n 是快乐数就返回 true ；不是，则返回 false 。
//
//
//
//示例 1：
//
//输入：19
//输出：true
//解释：
//12 + 92 = 82
//82 + 22 = 68
//62 + 82 = 100
//12 + 02 + 02 = 1
//示例 2：
//
//输入：n = 2
//输出：false
//
//
//提示：
//
//1 <= n <= 231 - 1

class Solution {
//    有三种情况：
//    最后是1
//    进入循环
//    无限变大
//
//    无限变大其实最终会进入循环
//    通过极限计算可得出 lim squareSum(n)/n = 0;
//    squareSum(n) <= m*ai^2, m是位数
//    squareSum(n) 最大时：m*9^2
//    n 最小时： 10^(m-1)
//    最后极限: lim m*9^2/10^(m-1) m越大值越小
    func isHappy(_ n: Int) -> Bool {
        var slow = n;
        var fast = nextNum(n: slow);
        
        while slow != fast {
            slow = nextNum(n: slow);
            fast = nextNum(n: nextNum(n: fast));
        }
        
        return slow == 1;
    }
    
    func nextNum(n: Int) -> Int {
        var ln = n;
        var res = 0;
        while ln != 0 {
            let end = ln % 10;
            res += end * end;
            ln /= 10;
        }
        return res;
    }
}

print(Solution().nextNum(n: 19));
