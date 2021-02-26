//
//  main.swift
//  83.DeleteDuplicates
//
//  Created by yp-tc-m-2548 on 2021/2/26.
//  Copyright © 2021 KiraLayo. All rights reserved.
//
//83. 删除排序链表中的重复元素
//给定一个排序链表，删除所有重复的元素，使得每个元素只出现一次。
//
//示例 1:
//
//输入: 1->1->2
//输出: 1->2
//示例 2:
//
//输入: 1->1->2->3->3
//输出: 1->2->3
//
//
//来源：力扣（LeetCode）
//链接：https://leetcode-cn.com/problems/remove-duplicates-from-sorted-list
//著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。

import ShareModule

class Solution {
    func deleteDuplicates(_ head: ListNode?) -> ListNode? {
        var current = head;
        
        while current != nil {
            
            var nextNode = current?.next;
            
            while current?.val == nextNode?.val {
                nextNode = nextNode?.next;
            }
            current?.next = nextNode;
            current = nextNode;
        }
        
        return head;
    }
}

