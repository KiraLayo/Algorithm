//
//  main.swift
//  实现.队列
//
//  Created by yp-tc-m-2548 on 2021/4/16.
//  Copyright © 2021 KiraLayo. All rights reserved.
//

import Foundation

class Queue {
    var head = 0;
    var queue:[Int] = [];
        
    public func enQueue(val:Int) -> Bool {
        queue.append(val);
        return true;
    }
    
    public func deQueue(val:Int) -> Bool{
        guard isEmpty() else {
            return false;
        }
        head += 1;
        return true;
    }
    
    public func isEmpty()-> Bool {
        return head == queue.count;
    }

    public func front() -> Int? {
        guard isEmpty() else {
            return nil;
        }
        
        return queue[head];
    }
}

let queue1 = Queue();
print(queue1.front());
queue1.enQueue(val: 1);
print(queue1.front());
