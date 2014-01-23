//
//  _0AppDelegate.h
//  Practice1
//
//  Created by Team Twenty on 11/14/13.
//  Copyright (c) 2013 Team Twenty. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
#import "ViewInfoViewController.h"

@class User;

@interface _0AppDelegate : UIResponder <UIApplicationDelegate>

@property AVAudioPlayer *audioPlayer;
@property (strong, nonatomic) UIWindow *window;
@property NSString *name;
@property NSString *playSound;

@end
