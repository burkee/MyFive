//
//  _0ViewController.h
//  Practice1
//
//  Created by Team Twenty on 11/14/13.
//  Copyright (c) 2013 Team Twenty. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EditInfoViewController.h"
#import "ViewInfoViewController.h"
@class User;
@class _0AppDelegate;

@interface _0ViewController : UIViewController
- (IBAction)callButton:(id)sender;

@property _0AppDelegate *app;

@property User *userData;

@end
