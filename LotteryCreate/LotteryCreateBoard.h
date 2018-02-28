//
//  LotteryCreateBoard.h
//  LotteryCreate
//
//  Created by Monalisa on 2018/2/26.
//  Copyright © 2018年 Monalisa. All rights reserved.
//

#import <UIKit/UIKit.h>

@class LotteryCreateBoard;
@protocol LotteryCreateBoardProtocol <NSObject>
@optional
- (void)onBoardCloseBtnClicked:(LotteryCreateBoard*)board;

@end

@interface LotteryCreateBoard : UIView
@property (nonatomic, weak) id<LotteryCreateBoardProtocol> delegate;
- (instancetype)initWithHeight:(CGFloat)height;
@end
