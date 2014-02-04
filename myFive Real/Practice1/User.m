//
//  User.m
//  Practice1
//
//  Created by App Jam on 11/18/13.
//  Copyright (c) 2013 Team Twenty All rights reserved.
//

#import "User.h"

@implementation User

@synthesize userName;
#pragma mark Singleton Methods

+ (id)myUser{
    static User *myUser = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        myUser = [[self alloc] init];
    });
    return myUser;
}

- (id)init {
    if (self = [super init]) {
       // someProperty = [[NSString alloc] initWithString:@"Default Property Value"];  Only if default value is needed
    }
    return self;
}

- (void)dealloc {
    // Should never be called, but just here for clarity really.
}
@end
