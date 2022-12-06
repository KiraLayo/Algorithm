//
//  main.swift
//  SwiftTest
//
//  Created by YP-21031 on 2022/11/9.
//  Copyright © 2022 KiraLayo. All rights reserved.
//

import Foundation

func f<S: Sequence>(seq: S) where S.Element == Int {
    
}

func g<S: Sequence>() -> S where S.Element == Int {
    
}
