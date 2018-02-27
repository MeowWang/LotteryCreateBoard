//
//  UIView+Value.m
//  LotteryCreate
//
//  Created by Monalisa on 2018/2/27.
//  Copyright © 2018年 Monalisa. All rights reserved.
//

#import "UIView+frame.h"

@implementation UIView(frame)

- (CGFloat)x
{
    return self.frame.origin.x;
}

- (CGFloat)y
{
    return self.frame.origin.y;
}

- (CGFloat)width
{
    return self.frame.size.width;
}

- (CGFloat)height
{
    return self.frame.size.height;
}
@end
