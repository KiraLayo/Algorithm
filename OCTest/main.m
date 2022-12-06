//
//  main.m
//  OCTest
//
//  Created by YP-21031 on 2022/9/8.
//  Copyright © 2022 KiraLayo. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {

    NSString *str = @"012=34";
    
    NSRange range = [str rangeOfString:@"="];
    
    return 0;
}
