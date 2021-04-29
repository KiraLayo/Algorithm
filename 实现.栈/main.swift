//
//  main.swift
//  实现.栈
//
//  Created by yp-tc-m-2548 on 2021/4/29.
//  Copyright © 2021 KiraLayo. All rights reserved.
//

import Foundation

class Stack {
    var list:[Int] = [];
    
    func push(val:Int) {
        list.append(val);
    }
    
    func pop() -> Bool {
        if isEmpty() {
            return false;
        }
        list.remove(at: list.count - 1)
        return true;
    }
    
    func top() -> Int? {
        return list.last;
    }
    
    func isEmpty() -> Bool {
        return list.isEmpty;
    }
}

