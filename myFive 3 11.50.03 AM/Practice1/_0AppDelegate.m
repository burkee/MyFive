//
//  _0AppDelegate.m
//  Practice1
//
//  Created by Team Twenty on 11/14/13.
//  Copyright (c) 2013 Team Twenty. All rights reserved.
//

#import "_0AppDelegate.h"
#import "User.h"
#import "ViewInfoViewController.h"


@implementation _0AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    return YES;
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.

    //These lines of code play the sound after coming back from phone call (911)
    if([self.playSound isEqualToString:@"YES"]){
        //The local notifcation code
    UIAlertView *alertView = [[UIAlertView alloc]initWithTitle:@"EMERGENCY" message:[NSString stringWithFormat:@"%@'s medical information",self.name] delegate:self cancelButtonTitle:@"VIEW" otherButtonTitles:nil];
    [alertView show];
        //The local notification code
        
    NSString *soundPath = [[NSBundle mainBundle] pathForResource:@"siren" ofType:@"mp3"]; //sound file played
    NSURL *soundURL = [NSURL fileURLWithPath:soundPath];
    NSError *error;
    self.audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:soundURL error:&error];
    self.audioPlayer.numberOfLoops = -1;
    [self.audioPlayer play];
    }
    self.playSound = @"NO";
    //These lines of code play the sound after coming back from phone call (911)
    
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    
    application.applicationIconBadgeNumber = 0; //set badge number to 0 because we don't need icon badge number
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

-(void)application:(UIApplication *)application didReceiveLocalNotification:(UILocalNotification*)notification{


}

@end
