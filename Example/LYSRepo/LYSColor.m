//
//  LYSColor.m
//  LYSRepo
//
//  Created by 刘永生 on 2017/3/9.
//  Copyright © 2017年 3050700400@qq.com. All rights reserved.
//

#import "LYSColor.h"

@implementation LYSColor

+(UIColor *) randomColor
{
    
    CGFloat red = (CGFloat)arc4random() / 0x100000000;
    CGFloat green = (CGFloat)arc4random() / 0x100000000;
    CGFloat blue = (CGFloat)arc4random() / 0x100000000;
    
    return [UIColor colorWithRed:red green:green blue:blue alpha:.5f];
    
}


@end
