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
    CGFloat headRadius = 12;
    CAShapeLayer *shapeLayer = [CAShapeLayer layer];
    UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:self.bounds byRoundingCorners:UIRectCornerTopLeft|UIRectCornerTopRight cornerRadii:CGSizeMake(headRadius, headRadius)];
    shapeLayer.path = path.CGPath;
    shapeLayer.fillColor = [UIColor whiteColor].CGColor;
    [self.layer addSublayer:shapeLayer];
//    self.layer.masksToBounds = YES;
    UIView *headView = [[UIView alloc]initWithFrame:CGRectMake(0, headRadius, self.frame.size.width, 45)];
//    headView.backgroundColor = [UIColor clearColor];
    
//    [headView.layer addSublayer:shapeLayer];
    [self addSubview:headView];
}

@end
