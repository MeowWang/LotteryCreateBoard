//
//  AwardNameSettingView.m
//  LotteryCreate
//
//  Created by Monalisa on 2018/2/28.
//  Copyright © 2018年 Monalisa. All rights reserved.
//

#import "AwardNameSettingView.h"
#import "UIView+frame.h"

@interface AwardNameSettingView()
@property (nonatomic, strong)UILabel *titleLabel;
@property (nonatomic, strong)UITextView *nameTextView;
@end

@implementation AwardNameSettingView

- (instancetype)initWithFrame:(CGRect)frame withTitle:(NSString*)title withHint:(NSString*)hintStr
{
    self = [super initWithFrame:frame];
    if (self) {
        [self internalInitTitle:title withHint:hintStr];
    }
    return self;
}

- (void)internalInitTitle:(NSString*)title withHint:(NSString*)hintStr
{
    self.backgroundColor = [UIColor whiteColor];
    self.titleLabel = [UILabel new];
    self.titleLabel.text = title;
    self.titleLabel.font = [UIFont systemFontOfSize:16];
    [self.titleLabel sizeToFit];
    self.titleLabel.frame = CGRectMake(15, 15, self.titleLabel.width, self.titleLabel.height);
    [self addSubview:self.titleLabel];
    
    self.nameTextView = [[UITextView alloc]initWithFrame:CGRectMake(15, 41, self.width-30, 22)];
    self.nameTextView.font = [UIFont systemFontOfSize:16];
    
}

@end
