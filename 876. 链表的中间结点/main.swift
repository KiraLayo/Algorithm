//
//  main.swift
//  876. 链表的中间结点
//
//  Created by YP-21031 on 2022/1/7.
//  Copyright © 2022 KiraLayo. All rights reserved.
//
//876. 链表的中间结点
//给定一个头结点为 head 的非空单链表，返回链表的中间结点。
//
//如果有两个中间结点，则返回第二个中间结点。
//
//
//
//示例 1：
//
//输入：[1,2,3,4,5]
//输出：此列表中的结点 3 (序列化形式：[3,4,5])
//返回的结点值为 3 。 (测评系统对该结点序列化表述是 [3,4,5])。
//注意，我们返回了一个 ListNode 类型的对象 ans，这样：
//ans.val = 3, ans.next.val = 4, ans.next.next.val = 5, 以及 ans.next.next.next = NULL.
//示例 2：
//
//输入：[1,2,3,4,5,6]
//输出：此列表中的结点 4 (序列化形式：[4,5,6])
//由于该列表有两个中间结点，值分别为 3 和 4，我们返回第二个结点。
//
//
//提示：
//
//给定链表的结点数介于 1 和 100 之间。
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
    func middleNode(_ head: ListNode?) -> ListNode? {
        guard let head = head else {
            return head;
        }
        return useTwoPoint(head);
    }
    
    func useTwoPoint(_ head: ListNode?) -> ListNode? {
        var h1 = head;
        var h2 = head;
        
        while h1 != nil && h2 != nil {
            // 注意偶数和奇数
            if h2!.next == nil {
                break;
            }
            h1 = h1!.next;
            h2 = h2!.next?.next
        }
        return h1;
    }
}
