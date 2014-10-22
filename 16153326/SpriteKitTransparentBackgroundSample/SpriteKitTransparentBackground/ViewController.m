//
//  ViewController.m
//  SpriteKitTransparentBackground
//
//  Created by Dulio Denis on 5/1/14.
//  Copyright (c) 2014 Dulio Denis. All rights reserved.
//

#import "ViewController.h"
#import <SpriteKit/SpriteKit.h>

@interface ViewController ()
- (IBAction)didTapAddSKViewButton:(id)sender;

@end

@implementation ViewController

// Expect the below view to cover ben kenobi but be invisible in order to
// apply sprite kit emitter effects on top of it while still viewing old ben
// Tested on Xcode 5.1.1 (iOS 7.1.2) and Xcode 6.1 (iOS 8.1)

- (IBAction)didTapAddSKViewButton:(id)sender {
    SKView *mySpriteKitView = [[SKView alloc] initWithFrame:self.view.bounds];
    mySpriteKitView.allowsTransparency = YES;
    mySpriteKitView.backgroundColor = [UIColor clearColor];
    [self.view addSubview:mySpriteKitView];
}
@end
