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
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSString *firstName = [defaults objectForKey:@"firstName"];
    NSString *birthDay = [defaults objectForKey:@"birthday"];
    NSString *age = [defaults objectForKey:@"age"];
    NSString *medication = [defaults objectForKey:@"medication"];
    NSString *allergies = [defaults objectForKey:@"allergies"];
    NSString *name1 = [defaults objectForKey:@"name1"];
    NSString *name2 = [defaults objectForKey:@"name2"];
    NSString *name3 = [defaults objectForKey:@"name3"];
    NSString *number1 = [defaults objectForKey:@"number1"];
    NSString *number2 = [defaults objectForKey:@"number2"];
    NSString *number3 = [defaults objectForKey:@"number3"];
    NSString *relation1 = [defaults objectForKey:@"relation1"];
    NSString *relation2 = [defaults objectForKey:@"relation2"];
    NSString *relation3 = [defaults objectForKey:@"relation3"];
    
    User *myUser = [User myUser];
    
    myUser.userName = firstName;
    myUser.birthDay = birthDay;
    myUser.age = age;
    myUser.medication = medication;
    myUser.allergies = allergies;
    myUser.name1 = name1;
    myUser.name2 = name2;
    myUser.name3 = name3;
    myUser.number1 = number1;
    myUser.number2 = number2;
    myUser.number3 = number3;
    myUser.relation1 = relation1;
    myUser.relation2 = relation2;
    myUser.relation3 = relation3;
    
    self.nameField.text = myUser.userName;
    self.ageLabel.text = myUser.age;
    self.birthdayLabel.text = myUser.birthDay;
    self.allergiesLabel.text = myUser.allergies;
    self.medicationLabel.text = myUser.medication;
    self.emergencyContactOne.text = [NSString stringWithFormat:@"%@  (%@):\n%@",myUser.name1,myUser.relation1,myUser.number1];
    self.emergencyContact2.text = [NSString stringWithFormat:@"%@  (%@):\n%@",myUser.name2,myUser.relation2,myUser.number2];
    self.emergencyContact3.text = [NSString stringWithFormat:@"%@  (%@):\n%@",myUser.name3,myUser.relation3,myUser.number3];
    [super viewDidLoad];
   // myUser.userName = @"HEYHEY";
//    User *myUser = [User myUser];
//    if(myUser == nil)
//    {
//     //dont do anything
//    }
//    else
//    {   //Load the data into the corresponding view info fields
//        self.nameField.text = myUser.userName;
//        self.ageLabel.text = myUser.age;
//        self.birthdayLabel.text = myUser.birthDay;
//        self.allergiesLabel.text = myUser.allergies;
//        self.medicationLabel.text = myUser.medication;
//        self.emergencyContactOne.text = [NSString stringWithFormat:@"%@  (%@):\n%@",myUser.name1,myUser.relation1,myUser.number1];
//        self.emergencyContact2.text = [NSString stringWithFormat:@"%@  (%@):\n%@",myUser.name2,myUser.relation2,myUser.number2];
//        self.emergencyContact3.text = [NSString stringWithFormat:@"%@  (%@):\n%@",myUser.name3,myUser.relation3,myUser.number3];
//    }
    
    self.app = (_0AppDelegate *)[[UIApplication sharedApplication] delegate];
    self.app.name = myUser.userName;
    
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
    //self.app.playSound = @"NO";
    //End
    
    //Segues and buttons
    if ([segue.identifier isEqualToString:@"showInfo"]) {
     //   ViewInfoViewController *modelController = (ViewInfoViewController *)segue.destinationViewController;
       // modelController.userData = myUser;
    }
    else if ([segue.identifier isEqualToString:@"saveInfo"]) {
      //  _0ViewController *modelController = (_0ViewController *)segue.destinationViewController;
        //modelController.userData = myUser;
    }
}


- (IBAction)turnOffSound:(id)sender {
    //turn of audio button
	[self.app.audioPlayer stop];
    //self.app.playSound = @"NO";
}

@end
