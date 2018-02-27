//
//  LotteryCreateBoard.m
//  LotteryCreate
//
//  Created by Monalisa on 2018/2/26.
//  Copyright © 2018年 Monalisa. All rights reserved.
//

#import "LotteryCreateBoard.h"
#import "UIView+frame.h"

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
    
    //head
    UIView *headView = [[UIView alloc]initWithFrame:CGRectMake(0, headRadius, self.frame.size.width, 45)];
    [self addSubview:headView];
    UILabel *titleLabel = [UILabel new];
    titleLabel.font = [UIFont systemFontOfSize:16];
    titleLabel.text = @"设置条件";
    [titleLabel sizeToFit];
    titleLabel.center = CGPointMake(self.width/2, titleLabel.height/2+6);
    [headView addSubview:titleLabel];
    CGFloat close_width = 18;
    UIButton *closeBtn = [[UIButton alloc]initWithFrame:CGRectMake(self.width-close_width-10, titleLabel.y, close_width, close_width)];
    [closeBtn setImage:[UIImage imageNamed:@"black_close.png"] forState:UIControlStateNormal];
    closeBtn.contentMode = UIViewContentModeScaleToFill;
    [closeBtn addTarget:self action:@selector(onClickClose) forControlEvents:UIControlEventTouchUpInside];
    closeBtn.backgroundColor = [UIColor blueColor];
    [headView addSubview:closeBtn];
    
    UIView *contentView = [[UIView alloc]initWithFrame:CGRectMake(0, headView.height+headRadius, self.width, self.height-headView.height-headRadius)];
    contentView.backgroundColor = [UIColor colorWithRed:247.0/255.0 green:247.0/255.0 blue:247.0/255.0 alpha:1.0];
    [self addSubview:contentView];
    
    
}

- (void)onClickClose
{
    
}

@end
