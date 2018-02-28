//
//  LotteryCreateBoard.m
//  LotteryCreate
//
//  Created by Monalisa on 2018/2/26.
//  Copyright © 2018年 Monalisa. All rights reserved.
//

#import "LotteryCreateBoard.h"
#import "UIView+frame.h"

@interface LotteryCreateBoard()
@property (nonatomic, strong) UIView *awardContainer;
@property (nonatomic, strong) UIView *conditionContainer;
@property (nonatomic, strong) UIButton *confirmButton;
@property (nonatomic, strong) UIScrollView *scrollView;
@property (nonatomic, strong) UISegmentedControl *awardSegment;
@end

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
    
    self.scrollView = [[UIScrollView alloc]initWithFrame:CGRectMake(0, headView.height+headRadius, self.width, self.height-headView.height-headRadius)];
    self.scrollView.backgroundColor = [UIColor colorWithRed:247.0/255.0 green:247.0/255.0 blue:247.0/255.0 alpha:1.0];
    [self addSubview:self.scrollView];
    
}

- (void)initAwardSetting
{
    self.awardContainer = [[UIView alloc]initWithFrame:CGRectMake(0, 0, self.width, 243)];
    [self.scrollView addSubview:self.awardContainer];
    CGFloat seg_margin = 16;
    self.awardSegment = [[UISegmentedControl alloc]initWithFrame:CGRectMake(seg_margin, 12, self.width-seg_margin*2, 30)];
    [self.awardSegment insertSegmentWithTitle:@"自定义奖品" atIndex:0 animated:NO];
    [self.awardSegment insertSegmentWithTitle:@"豪华礼物奖品" atIndex:1 animated:NO];
    [self.awardSegment setSelectedSegmentIndex:0];
    [self.awardContainer addSubview:self.awardSegment];
    
    
}

- (void)onClickClose
{
    if (self.delegate && [self.delegate respondsToSelector:@selector(onBoardCloseBtnClicked:)]) {
        [self.delegate onBoardCloseBtnClicked:self];
    }
}

@end
