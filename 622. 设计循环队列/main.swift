//
//  main.swift
//  622. 设计循环队列
//
//  Created by yp-tc-m-2548 on 2021/4/27.
//  Copyright © 2021 KiraLayo. All rights reserved.
//

import Foundation

class MyCircularQueue {
    var head = -1;
    var tail = -1;
    var list:[Int];
    var k:Int;

    init(_ size: Int) {
        k = size;
        list = [Int](repeating: 0, count: size);
    }

    func enQueue(_ value: Int) -> Bool {
        guard !isFull() else {
            return false;
        }
        if isEmpty() {
            head += 1;
        }
        tail = (tail + 1) % k;
        list[tail] = value;
        return true;
    }

    func deQueue() -> Bool {
        guard !isEmpty() else {
            return false;
        }
        if (head == tail) {
            head = -1;
            tail = -1;
        } else {
            head = (head + 1) % k;
        }
        return true;
    }

    func Front() -> Int {
        if isEmpty() {
            return -1;
        }
        return list[head];
    }

    func Rear() -> Int {
        if isEmpty() {
            return -1;
        }
        return list[tail];
    }

    func isEmpty() -> Bool {
        return head == -1 || tail == -1;
    }

    func isFull() -> Bool {
        if (head < tail) {
            return tail - head + 1 == k;
        } else if (head == tail) {
            return head == -1 ? false : k == 1;
        }

        return tail == head - 1;
    }
}
