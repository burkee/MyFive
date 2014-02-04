//
//  EditInfoViewController.h
//  Practice1
//
//  Created by App Jam on 11/18/13.
//  Copyright (c) 2013 Team Twenty All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewInfoViewController.h"
#import "_0ViewController.h"

@class User;

enum userInfoTags {
    NAMETAG = 0,
    BIRTHDAYTAG,
    AGETAG,
    ALLERGIESTAG,
    MEDICATIONTAG,
    NAME1,
    NUMBER1,
    RELATION1,
    NAME2,
    NUMBER2,
    RELATION2,
    NAME3,
    NUMBER3,
    RELATION3
};

@interface EditInfoViewController : UIViewController

- (IBAction)saveButton:(id)sender;

#pragma -Emergency Contacts-
/////////////////////////////////////////////////////////////Emergency contact 3
@property (weak, nonatomic) IBOutlet UITextField *relation3;
@property (weak, nonatomic) IBOutlet UITextField *number3;
@property (weak, nonatomic) IBOutlet UITextField *name3;
/////////////////////////////////////////////////////////////Emergency contact 2
@property (weak, nonatomic) IBOutlet UITextField *relation2;
@property (weak, nonatomic) IBOutlet UITextField *number2;
@property (weak, nonatomic) IBOutlet UITextField *name2;
/////////////////////////////////////////////////////////////Emergency contact 1
@property (weak, nonatomic) IBOutlet UITextField *relation1;
@property (weak, nonatomic) IBOutlet UITextField *number1;
@property (weak, nonatomic) IBOutlet UITextField *name1;
/////////////////////////////////////////////////////////////

#pragma -Other Fields-
@property (weak, nonatomic) IBOutlet UITextField *medicationField;
@property (weak, nonatomic) IBOutlet UITextField *allergiesField;

@property (weak, nonatomic) IBOutlet UITextField *ageField;
@property (weak, nonatomic) IBOutlet UITextField *birthdayField;

@property (weak, nonatomic) IBOutlet UITextField *firstNameField;

@property User *userData;

@end
