//
//  BlockView.h
//  CADisplayLinkDemo
//
//  Created by ltebean on 15-3-13.
//  Copyright (c) 2015年 glow. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BlockView : UIView
- (void)startAnimationFrom:(CGFloat)from to:(CGFloat)to;
- (void)completeAnimation;
@end
