//
//  LotteryCreateBoard.m
//  LotteryCreate
//
//  Created by Monalisa on 2018/2/26.
//  Copyright © 2018年 Monalisa. All rights reserved.
//

#import "LotteryCreateBoard.h"

@implementation LotteryCreateBoard

- (instancetype)initWithHeight:(CGFloat)height
{
    self = [super initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, height)];
    if (self) {
        [self internalInit];
    }
    return self;
}

- (void)internalInit
{
//    self.backgroundColor = [UIColor clearColor];
    CGFloat headRadius = 12;
    UIView *headView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, self.frame.size.width, headRadius+45)];
//    headView.backgroundColor = [UIColor clearColor];
    CAShapeLayer *shapeLayer = [CAShapeLayer layer];
    UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:headView.frame byRoundingCorners:UIRectCornerTopLeft|UIRectCornerTopRight cornerRadii:CGSizeMake(headRadius, headRadius)];
    shapeLayer.path = path.CGPath;
    shapeLayer.backgroundColor = [UIColor whiteColor].CGColor;
    [headView.layer addSublayer:shapeLayer];
    [self addSubview:headView];
}

@end
