//
//  ViewInfoViewController.h
//  Practice1
//
//  Created by App Jam on 11/18/13.
//  Copyright (c) 2013 Team Twenty All rights reserved.
//

#import <UIKit/UIKit.h>
#import "_0ViewController.h"
#import "EditInfoViewController.h"
#import <AVFoundation/AVFoundation.h>
#import "_0AppDelegate.h"

@class User;
@class _0AppDelegate;

@interface ViewInfoViewController : UIViewController

- (IBAction)turnOffSound:(id)sender;

@property _0AppDelegate *app;

#pragma -Emergency Contacts-
@property (weak, nonatomic) IBOutlet UITextView *emergencyContact3;
@property (weak, nonatomic) IBOutlet UITextView *emergencyContact2;
@property (weak, nonatomic) IBOutlet UITextView *emergencyContactOne;
/////////////////////////////////////////////////////////////////////
#pragma -Other Labels-
@property (weak, nonatomic) IBOutlet UILabel *ageLabel;
@property (weak, nonatomic) IBOutlet UITextView *medicationLabel;
@property (weak, nonatomic) IBOutlet UITextView *allergiesLabel;
@property (weak, nonatomic) IBOutlet UILabel *birthdayLabel;
@property (weak, nonatomic) IBOutlet UILabel *nameField;

#pragma -Model-
@property User* userData;

@end
