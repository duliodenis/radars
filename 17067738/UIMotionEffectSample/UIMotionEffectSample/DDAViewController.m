//
//  DDAViewController.m
//  UIMotionEffectSample
//
//  Created by Dulio Denis on 5/20/14.
//  Copyright (c) 2014 ddApps. All rights reserved.
//

#import "DDAViewController.h"

@interface DDAViewController ()
@property (nonatomic) IBOutlet UIView *parallaxCardView;
@end

#define BACKGROUND      1

@implementation DDAViewController

- (void)viewDidLoad {
    CGFloat tilt = 30.0;
    for (UIView *subview in self.parallaxCardView.subviews)
    {
        if ([subview viewWithTag:BACKGROUND]) {
            [self addHorizontalBackTilt:tilt verticalTilt:tilt ToView:subview];
            NSLog(@"APPLYING TILT ONLY TO BACKGROUND"); // But Foreground and Frame are affected
        }
    }
}

#pragma mark - Convenience Method 

- (void)addHorizontalBackTilt:(CGFloat)x verticalTilt:(CGFloat)y ToView:(UIView *)view
{
    UIInterpolatingMotionEffect *xAxis = nil;
    UIInterpolatingMotionEffect *yAxis = nil;
    
    if (x != 0.0)
    {
        xAxis = [[UIInterpolatingMotionEffect alloc] initWithKeyPath:@"center.x" type:UIInterpolatingMotionEffectTypeTiltAlongHorizontalAxis];
        xAxis.minimumRelativeValue = [NSNumber numberWithFloat:x];
        xAxis.maximumRelativeValue = [NSNumber numberWithFloat:-x];
    }
    
    if (y != 0.0)
    {
        yAxis = [[UIInterpolatingMotionEffect alloc] initWithKeyPath:@"center.y" type:UIInterpolatingMotionEffectTypeTiltAlongVerticalAxis];
        yAxis.minimumRelativeValue = [NSNumber numberWithFloat:y];
        yAxis.maximumRelativeValue = [NSNumber numberWithFloat:-y];
    }
    
    if (xAxis || yAxis)
    {
        UIMotionEffectGroup *group = [[UIMotionEffectGroup alloc] init];
        NSMutableArray *effects = [[NSMutableArray alloc] init];
        if (xAxis)
        {
            [effects addObject:xAxis];
        }
        
        if (yAxis)
        {
            [effects addObject:yAxis];
        }
        group.motionEffects = effects;
        [view addMotionEffect:group];
    }
}

@end
