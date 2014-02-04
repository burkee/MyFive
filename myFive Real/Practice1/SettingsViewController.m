//
//  SettingsViewController.m
//  myFive
//
//  Created by App Jam on 1/23/14.
//  Copyright (c) 2014 Team 20. All rights reserved.
//

#import "SettingsViewController.h"
#import "_0AppDelegate.h"

@interface SettingsViewController ()

@end

@implementation SettingsViewController

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
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)hideButton
{
    self.callView.hidden=TRUE;
}

-(IBAction)showButton
{
    self.on.hidden=TRUE;
}

@end
