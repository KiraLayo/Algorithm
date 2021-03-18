//
//  main.swift
//  test
//
//  Created by yp-tc-m-2548 on 2021/3/18.
//  Copyright © 2021 KiraLayo. All rights reserved.
//
//354. 俄罗斯套娃信封问题
//给你一个二维整数数组 envelopes ，其中 envelopes[i] = [wi, hi] ，表示第 i 个信封的宽度和高度。
//
//当另一个信封的宽度和高度都比这个信封大的时候，这个信封就可以放进另一个信封里，如同俄罗斯套娃一样。
//
//请计算 最多能有多少个 信封能组成一组“俄罗斯套娃”信封（即可以把一个信封放到另一个信封里面）。
//
//注意：不允许旋转信封。
//
//
//示例 1：
//
//输入：envelopes = [[5,4],[6,4],[6,7],[2,3]]
//输出：3
//解释：最多信封的个数为 3, 组合为: [2,3] => [5,4] => [6,7]。
//示例 2：
//
//输入：envelopes = [[1,1],[1,1],[1,1]]
//输出：1
//
//
//提示：
//
//1 <= envelopes.length <= 5000
//envelopes[i].length == 2
//1 <= wi, hi <= 104
import Foundation

class Solution {
    func maxEnvelopes(_ envelopes: [[Int]]) -> Int {
//        先根据w排序，因为w可能存在相同，w相同的再根据h进行倒序，主要是为了防止w相同，根据h能得到长度超过1的递增序列，之后整体求最长递增序列
        let _envelopes = envelopes.sorted {
            $0[0] < $1[0] || ($0[0] == $1[0] && $0[1] > $1[1])
        }
        var maxLength = 1;
        var lengths = [Int](repeating: 1, count: _envelopes.count);
        
        for i in 0..<_envelopes.count {
            for j in 0..<i {
                if _envelopes[i][1] > _envelopes[j][1] {
                    lengths[i] = max(lengths[i], lengths[j] + 1);
                }
            }
            maxLength = max(lengths[i], maxLength);
        }
        
        return maxLength;
    }
}


print(Solution().maxEnvelopes([[5,4],[6,4],[6,7],[2,3]]));
print(Solution().maxEnvelopes([[1,1],[1,1],[1,1]]));
