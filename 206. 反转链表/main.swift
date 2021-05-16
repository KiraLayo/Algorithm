//
//  main.swift
//  206. 反转链表
//
//  Created by YP-21031 on 2021/5/17.
//  Copyright © 2021 KiraLayo. All rights reserved.
//


//206. 反转链表
//给你单链表的头节点 head ，请你反转链表，并返回反转后的链表。
//
//
//示例 1：
//
//
//输入：head = [1,2,3,4,5]
//输出：[5,4,3,2,1]
//示例 2：
//
//
//输入：head = [1,2]
//输出：[2,1]
//示例 3：
//
//输入：head = []
//输出：[]
//
//
//提示：
//
//链表中节点的数目范围是 [0, 5000]
//-5000 <= Node.val <= 5000
//
//
//进阶：链表可以选用迭代或递归方式完成反转。你能否用两种方法解决这道题？

import Foundation
import ShareModule

/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
class Solution {
    func reverseList(_ head: ListNode?) -> ListNode? {
        if head == nil {
            return nil;
        }

        var current = head;
        var pre : ListNode? = nil;
        while current != nil  {
            let next = current!.next;
            current!.next = pre;
            pre = current;
            current = next;
        }
        return pre;
    }
    
    func reverseList2(_ head: ListNode?) -> ListNode? {
        guard let h = head, let next = h.next else { return head }
        
        let node = reverseList(next);
        next.next = head;
        h.next = nil;
        
        return node;
    }
}

let node2 = ListNode(2);
let node1 = ListNode(1);
node1.next = node2;

print("asd");

var head = Solution().reverseList(node1);

print(head);

while head != nil {
    print(head!.val);
    head = head!.next;
}
