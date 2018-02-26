//
//  ViewController.m
//  LotteryCreate
//
//  Created by Monalisa on 2018/2/26.
//  Copyright © 2018年 Monalisa. All rights reserved.
//

#import "ViewController.h"
#import "LotteryCreateBoard.h"

@interface ViewController ()
@property (nonatomic, strong)LotteryCreateBoard *createBoard;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor grayColor];
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(0, 200, 100, 60);
    btn.center = CGPointMake(self.view.frame.size.width/2 ,btn.center.y);
    btn.backgroundColor = [UIColor blueColor];
    [btn addTarget:self action:@selector(openCreateBoard) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

- (void)openCreateBoard
{
    if (!self.createBoard) {
        self.createBoard = [[LotteryCreateBoard alloc]initWithHeight:557];
//        [self.view addSubview:self.createBoard];
        [self popupView:self.createBoard];
    }
}

- (void)popupView:(UIView*)view
{
    [self.view addSubview:view];
    view.frame = CGRectMake(view.frame.origin.x, [UIScreen mainScreen].bounds.size.height, view.frame.size.width, view.frame.size.height);
    [UIView animateWithDuration:0.4 delay:0 options:UIViewAnimationOptionCurveEaseInOut animations:^{
        view.frame = CGRectMake(view.frame.origin.x, [UIScreen mainScreen].bounds.size.height-view.frame.size.height, view.frame.size.width, view.frame.size.height);
    } completion:nil];
}
@end
