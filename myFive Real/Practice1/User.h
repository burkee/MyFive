//
//  User.h
//  Practice1
//
//  Created by App Jam on 11/18/13.
//  Copyright (c) 2013 Team Twenty. All rights reserved.
//
// This file contains the interface for the User object and what properties it has.
//


#import <Foundation/Foundation.h>

@interface User : NSObject

@property NSString *userName;
@property NSString *birthDay;
@property NSString *age;
@property NSString *allergies;
@property NSString *medication;


/////////////////Emergency Contacts/////////////////////
@property NSString *name1;
@property NSString *name2;
@property NSString *name3;

@property NSString *number1;
@property NSString *number2;
@property NSString *number3;

@property NSString *relation1;
@property NSString *relation2;
@property NSString *relation3;
/////////////////////////////////////////////////

+ (id)myUser;

@end
