//
//  ViewInfoViewController.m
//  Practice1
//
//  Created by App Jam on 11/18/13.
//  Copyright (c) 2013 Derek Hsieh. All rights reserved.
//

#import "ViewInfoViewController.h"
#import "_0ViewController.h"
#import "User.h"
#import <AVFoundation/AVFoundation.h>
#import "_0AppDelegate.h"

@interface ViewInfoViewController ()

@end

@implementation ViewInfoViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    if(self.userData == nil)
    {
     //dont do anything
    }
    else
    {   //Load the data into the corresponding view info fields
        self.nameField.text = self.userData.userName;
        self.ageLabel.text = self.userData.age;
        self.birthdayLabel.text = self.userData.birthDay;
        self.allergiesLabel.text = self.userData.allergies;
        self.medicationLabel.text = self.userData.medication;
        self.emergencyContactOne.text = [NSString stringWithFormat:@"%@  (%@):\n%@",self.userData.name1,self.userData.relation1,self.userData.number1];
        self.emergencyContact2.text = [NSString stringWithFormat:@"%@  (%@):\n%@",self.userData.name2,self.userData.relation2,self.userData.number2];
        self.emergencyContact3.text = [NSString stringWithFormat:@"%@  (%@):\n%@",self.userData.name3,self.userData.relation3,self.userData.number3];
    }
    
    self.app = (_0AppDelegate *)[[UIApplication sharedApplication] delegate];
    self.app.name = self.userData.userName;
    
    [[UIApplication sharedApplication] setIdleTimerDisabled: YES]; //this line makes it so the screen does not go to lock screen (emergency)
    [(UIScrollView*)self.view setContentSize:CGSizeMake(320, 568)]; //size of screen
    
    

	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    //Stops sound when the user switches screens but doesnt hit mute button
    [self.app.audioPlayer stop];
    self.app.playSound = @"NO";
    //End
    
    //Segues and buttons
    if ([segue.identifier isEqualToString:@"showInfo"]) {
        ViewInfoViewController *modelController = (ViewInfoViewController *)segue.destinationViewController;
        modelController.userData = self.userData;
    }
    else if ([segue.identifier isEqualToString:@"saveInfo"]) {
        _0ViewController *modelController = (_0ViewController *)segue.destinationViewController;
        modelController.userData = self.userData;
    }
}


- (IBAction)turnOffSound:(id)sender {
    //turn of audio button
	[self.app.audioPlayer stop];
    self.app.playSound = @"NO";
    
}

@end
