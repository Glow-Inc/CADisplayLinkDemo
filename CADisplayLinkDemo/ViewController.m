//
//  ViewController.m
//  CADisplayLinkDemo
//
//  Created by ltebean on 15-3-13.
//  Copyright (c) 2015 glow. All rights reserved.
//

#import "ViewController.h"
#import "BlockView.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet BlockView *blockView;
@property (strong, nonatomic) CADisplayLink *displayLink;
@property (nonatomic) BOOL animating;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)startButtonPressed:(id)sender
{
    if (self.animating) {
        return;
    }
    
    self.animating = YES;
    
    CGFloat from = CGRectGetHeight(self.view.bounds) - CGRectGetHeight(self.blockView.bounds) / 2;
    CGFloat to = 100;
    
    self.blockView.center = CGPointMake(self.blockView.center.x, from);

    [self.blockView startAnimationFrom:from to:to];
    [UIView animateWithDuration:1 delay:0 usingSpringWithDamping:0.85 initialSpringVelocity:0 options:0 animations:^{
        self.blockView.center = CGPointMake(self.blockView.center.x, to);
    } completion:^(BOOL finished) {
        [self.blockView completeAnimation];
        self.animating = NO;
    }];
}

@end
