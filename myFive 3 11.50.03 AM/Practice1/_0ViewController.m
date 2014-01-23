//
//  _0ViewController.m
//  Practice1
//
//  Created by Team Twenty on 11/14/13.
//  Copyright (c) 2013 Team Twenty All rights reserved.
//

//Homepage

#import "_0ViewController.h"
#import "User.h"
#import "_0AppDelegate.h"

@interface _0ViewController ()

@end

@implementation _0ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
        
    [(UIScrollView*)self.view setContentSize:CGSizeMake(320, 568)]; //sets the size of the screen
    self.app = (_0AppDelegate *)[[UIApplication sharedApplication] delegate];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender //Segues or buttons pushed
{
    if ([segue.identifier isEqualToString:@"showInfo"]) {
        ViewInfoViewController *modelController = (ViewInfoViewController *)segue.destinationViewController;
        modelController.userData = self.userData;
    }
    else if ([segue.identifier isEqualToString:@"saveInfo"]) {
        _0ViewController *modelController = (_0ViewController *)segue.destinationViewController;
        modelController.userData = self.userData;
    }
    else if([segue.identifier isEqualToString:@"editInfo"]) {
        EditInfoViewController *modelController = (EditInfoViewController*)segue.destinationViewController;
        modelController.userData = self.userData;
    }
    else if ([segue.identifier isEqualToString:@"emergencyInfo"]) {
        _0ViewController *modelController = (_0ViewController *)segue.destinationViewController;
        modelController.userData = self.userData;
        self.app.playSound = @"YES";
    }
}
    

- (IBAction)callButton:(id)sender {
   
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"telprompt://8312770866"]];
    //Change the telprompt number to change the number the app calls
    
    //schedules a local notification
    UILocalNotification *emergency = [[UILocalNotification alloc]init];
    if(emergency == nil) return;
    NSDate *fireTime = [[NSDate date] dateByAddingTimeInterval:10];
    emergency.fireDate = fireTime;
    emergency.alertBody = @"EMERGENCY ALERT";
    emergency.repeatInterval = 0;
    emergency.soundName = UILocalNotificationDefaultSoundName;
    [[UIApplication sharedApplication] scheduleLocalNotification:emergency];
}

@end

