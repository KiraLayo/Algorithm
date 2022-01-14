//
//  main.swift
//  19. 删除链表的倒数第 N 个结点
//
//  Created by YP-21031 on 2022/1/7.
//  Copyright © 2022 KiraLayo. All rights reserved.
//

//19. 删除链表的倒数第 N 个结点
//给你一个链表，删除链表的倒数第 n 个结点，并且返回链表的头结点。
//
//
//
//示例 1：
//
//
//输入：head = [1,2,3,4,5], n = 2
//输出：[1,2,3,5]
//示例 2：
//
//输入：head = [1], n = 1
//输出：[]
//示例 3：
//
//输入：head = [1,2], n = 1
//输出：[1]
//
//
//提示：
//
//链表中结点的数目为 sz
//1 <= sz <= 30
//0 <= Node.val <= 100
//1 <= n <= sz
//
//进阶：你能尝试使用一趟扫描实现吗？

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
    func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
        var end = false;
        return useStack(head, &n, &end);
    }
    
    func useTwoPoint(_ head: ListNode?, _ n: Int) -> ListNode? {

    }
    
    func useStack(_ head: ListNode?, _ n: inout Int, _ end: inout Bool) -> ListNode? {
        if head == nil {
            return nil;
        }
        
        let p = useStack(head!.next, &n, &end);
        if p == nil {
            end = true
        }
        if end {
            n -= 1;
        }
        
        if n < 0 {
            return p
        }
        return head;
    }
}

