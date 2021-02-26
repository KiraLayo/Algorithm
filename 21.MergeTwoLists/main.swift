//
//  main.swift
//  21.MergeTwoLists
//
//  Created by yp-tc-m-2548 on 2021/2/26.
//  Copyright © 2021 KiraLayo. All rights reserved.
//
//21. 合并两个有序链表
//将两个升序链表合并为一个新的 升序 链表并返回。新链表是通过拼接给定的两个链表的所有节点组成的。
//
// 
//
//示例 1：
//
//
//输入：l1 = [1,2,4], l2 = [1,3,4]
//输出：[1,1,2,3,4,4]
//示例 2：
//
//输入：l1 = [], l2 = []
//输出：[]
//示例 3：
//
//输入：l1 = [], l2 = [0]
//输出：[0]
// 
//
//提示：
//
//两个链表的节点数目范围是 [0, 50]
//-100 <= Node.val <= 100
//l1 和 l2 均按 非递减顺序 排列
//
//来源：力扣（LeetCode）
//链接：https://leetcode-cn.com/problems/merge-two-sorted-lists
//著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
class Solution {
    func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        return mergeTwoLists2(l1, l2);
    }
    
    func mergeTwoLists1(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var head:ListNode = ListNode(-1);
        var index = head;

        var p1 = l1;
        var p2 = l2;

        while p1 != nil && p2 != nil {

            if p1!.val < p2!.val {
                index.next = p1;
                p1 = p1!.next;
            }else{
                index.next = p2;
                p2 = p2!.next;
            }
            index = index.next!;
        }

        index.next = p1 == nil ? p2 : p1;

        return head.next;
    }

    func mergeTwoLists2(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        if l1 == nil {
            return l2;
        }

        if l2 == nil {
            return l1;
        }

        if l1!.val < l2!.val {
            l1!.next = mergeTwoLists2(l1!.next, l2);
            return l1;
        }else{
            l2!.next = mergeTwoLists2(l1, l2!.next);
            return l2;
        }
    }
}
