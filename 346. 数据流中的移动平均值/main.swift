//
//  main.swift
//  346. 数据流中的移动平均值
//
//  Created by yp-tc-m-2548 on 2021/4/27.
//  Copyright © 2021 KiraLayo. All rights reserved.
//

import Foundation

class MovingAverage {
    let size:Int;
    var list:[Int] = [];
    var index = 0;
    var sum = 0;
    
    /** Initialize your data structure here. */
    init(_ size: Int) {
        self.size = size;
    }
        
    func next(_ val: Int) -> Double {
        if list.count < size {
            list.append(val);
            sum += val;
            index += 1;
            return Double(sum)/Double(list.count);
        } else {
            sum -= list[index%size];
            list[index%size] = val;
            sum += val;
            index += 1;
            return Double(sum)/Double(size);
        }
    }
}


let obj = MovingAverage(3)
print(obj.next(1));
print(obj.next(10));
print(obj.next(3));
print(obj.next(5));

