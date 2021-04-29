//
//  main.swift
//  实现.广度优先BFS
//
//  Created by yp-tc-m-2548 on 2021/4/29.
//  Copyright © 2021 KiraLayo. All rights reserved.
//

import Foundation

// 简略结构体，需要实现Hashable
struct Node:Hashable {
    let val:Int;
    let neighbors:[Node]
}

func BFS(root: Node, target: Node)-> Int{
    var queue:Set<Node> = [root];
    var used: Set<Node> = [root];
    var step: Int = 0;
    while !queue.isEmpty {
        step += 1;
        for item in queue {
            if item == target {
                return step
            }
            for node in item.neighbors {
                if !used.contains(node) {
                    used.insert(node);
                    queue.insert(node);
                }
            }
            queue.remove(item);
        }
    }
    return -1;
}
