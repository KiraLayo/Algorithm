//
//  main.swift
//  234. 回文链表
//
//  Created by YP-21031 on 2021/5/16.
//  Copyright © 2021 KiraLayo. All rights reserved.
//

//234. 回文链表
//请判断一个链表是否为回文链表。
//
//示例 1:
//
//输入: 1->2
//输出: false
//示例 2:
//
//输入: 1->2->2->1
//输出: true
//进阶：
//你能否用 O(n) 时间复杂度和 O(1) 空间复杂度解决此题？

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
    func isPalindrome(_ head: ListNode?) -> Bool {
        if head == nil {
            return true;
        }
        
        var secondPosition = reverseList(endOfFirstHalf(head!).next);
        var firstPosition = head;
        
        while secondPosition != nil {
            if secondPosition!.val != firstPosition!.val {
                return false;
            }
            firstPosition = firstPosition?.next;
            secondPosition = secondPosition?.next;
        }

        return true;
    }
    
    func endOfFirstHalf(_ head:ListNode) -> ListNode {
        var slowNode: ListNode? = head;
        var fastNode: ListNode? = head;
        while fastNode!.next != nil && fastNode!.next!.next != nil {
            slowNode = slowNode?.next;
            fastNode = fastNode?.next?.next;
        }
        return slowNode!;
    }
    
    func reverseList(_ head: ListNode?) -> ListNode?{
        guard head != nil else {
            return nil;
        }
        
        var current:ListNode? = head;
        var pre: ListNode? = nil;
        
        while current != nil {
            let next = current!.next;
            current!.next = pre;
            
            pre = current;
            current = next;
        }
        
        return pre;
    }
    
    func reverseList2(_ head: ListNode?) -> ListNode?{
        guard  let h = head, let next = h.next else {
            return head;
        }
    
        let p = reverseList2(next);
        next.next = h;
        h.next = nil;
        
        return p;
    }
}
