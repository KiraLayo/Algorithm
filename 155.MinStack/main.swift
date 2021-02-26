//
//  main.swift
//  155.MinStack
//
//  Created by yp-tc-m-2548 on 2021/2/26.
//  Copyright © 2021 KiraLayo. All rights reserved.
//
//155. 最小栈
//
//设计一个支持 push ，pop ，top 操作，并能在常数时间内检索到最小元素的栈。
//
//push(x) —— 将元素 x 推入栈中。
//pop() —— 删除栈顶的元素。
//top() —— 获取栈顶元素。
//getMin() —— 检索栈中的最小元素。
//
//
//示例:
//
//输入：
//["MinStack","push","push","push","getMin","pop","top","getMin"]
//[[],[-2],[0],[-3],[],[],[],[]]
//
//输出：
//[null,null,null,null,-3,null,0,-2]
//
//解释：
//MinStack minStack = new MinStack();
//minStack.push(-2);
//minStack.push(0);
//minStack.push(-3);
//minStack.getMin();   --> 返回 -3.
//minStack.pop();
//minStack.top();      --> 返回 0.
//minStack.getMin();   --> 返回 -2.
//
//
//提示：
//
//pop、top 和 getMin 操作总是在 非空栈 上调用。
//
//来源：力扣（LeetCode）
//链接：https://leetcode-cn.com/problems/min-stack
//著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。

class MinStack {

    var stack:[Int];
    var minStack:[Int];
    
    /** initialize your data structure here. */
    init() {
        stack = [Int]();
        minStack = [Int]();
    }
    
    func push(_ x: Int) {
        stack.append(x);
        if minStack.count == 0 || minStack.last! >= x {
            minStack.append(x);
        }
    }
    
    func pop() {
        if stack.count > 0 {
            let val = stack.removeLast();
            if val == minStack.last! {
                minStack.removeLast();
            }
        }
    }
    
    func top() -> Int {
        return stack.last!
    }
    
    func getMin() -> Int {
        return minStack.last!;
    }
}
