//
//  EditInfoViewController.m
//  Practice1
//
//  Created by App Jam on 11/18/13.
//  Copyright (c) 2013 Team Twenty All rights reserved.
//

#import "EditInfoViewController.h"
#import "User.h"


@interface EditInfoViewController ()

@end

@implementation EditInfoViewController

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
    //Get Stored Data before view loads
   // [[NSUserDefaults standardUserDefaults] synchronize];
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
    self.firstNameField.text = firstName;
    self.birthdayField.text = birthDay;
    self.ageField.text = age;
    self.medicationField.text = medication;
    self.allergiesField.text = allergies;
    self.name1.text = name1;
    self.name2.text = name2;
    self.name3.text = name3;
    self.number1.text = number1;
    self.number2.text = number2;
    self.number3.text = number3;
    self.relation1.text = relation1;
    self.relation2.text = relation2;
    self.relation3.text = relation3;
    
    [super viewDidLoad];
    [(UIScrollView*)self.view setContentSize:CGSizeMake(320, 784)]; //screen size
    //////////////////////////////////////////////////////
    
    
    
    //The below lines of code are used to save text data inputted into the edit info fields in the app
//    if(myUser == nil)
//    {
////        myUser = [[User alloc] init];
//    }
//    else {
//        self.firstNameField.text = myUser.userName;
//        self.birthdayField.text = myUser.birthDay;
//        self.ageField.text = myUser.age;
//        self.medicationField.text = medication;
//        self.allergiesField.text = allergies;
//        self.name1.text = name1;
//        self.name2.text = name2;
//        self.name3.text = name3;
//        self.number1.text = number1;
//        self.number2.text = number2;
//        self.number3.text = number3;
//        self.relation1.text = relation1;
//        self.relation2.text = relation2;
//        self.relation3.text = relation3;
//    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


////////////////TextField Manipulation/////////////////////
- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    
    //[self.firstNameField resignFirstResponder];
    //Below lines of code save text inputted into the edit info fields using TAGs after hitting return
    //see below tags to see which ones are associated with which info field
    User *myUser = [User myUser];
    switch(textField.tag)
    {   //self.firstNameField.hidden = @"YES";
        case NAMETAG: //name field
            myUser.userName = self.firstNameField.text;
            [self.firstNameField resignFirstResponder];
            break;
        case BIRTHDAYTAG: //birthday field
            myUser.birthDay = self.birthdayField.text;
            [self.birthdayField resignFirstResponder];
            break;
        case AGETAG: //age field
            myUser.age = self.ageField.text;
            [self.ageField resignFirstResponder];
            break;
        case ALLERGIESTAG: //allergies field
            myUser.allergies = self.allergiesField.text;
            [self.allergiesField resignFirstResponder];
            break;
        case MEDICATIONTAG: //medications field
            myUser.medication = self.medicationField.text;
            [self.medicationField resignFirstResponder];
            break;
        case NAME1: //name1
            myUser.name1 = self.name1.text;
            [self.name1 resignFirstResponder];
            break;
        case NUMBER1: //number1
            myUser.number1 = self.number1.text;
            [self.number1 resignFirstResponder];
            break;
        case RELATION1: //relation1
            myUser.relation1 = self.relation1.text;
            [self.relation1 resignFirstResponder];
            break;
        case NAME2: //name2
            myUser.name2 = self.name2.text;
            [self.name2 resignFirstResponder];
            break;
        case NUMBER2: //number2
            myUser.number2 = self.number2.text;
            [self.number2 resignFirstResponder];
            break;
        case RELATION2: //relation2
            myUser.relation2 = self.relation2.text;
            [self.relation2 resignFirstResponder];
            break;
        case NAME3: //name3
            myUser.name3 = self.name3.text;
            [self.name3 resignFirstResponder];
            break;
        case NUMBER3: //number3
            myUser.number3 = self.number3.text;
            [self.number3 resignFirstResponder];
            break;
        case RELATION3: //relation3
            myUser.relation3 = self.relation3.text;
            [self.relation3 resignFirstResponder];
            break;
            
    }
    
    return YES;
}

// NOT SURE IF WE SHOULD HAVE THIS. IT SAVES EVEN IF THEY DONT WANT IT
- (void)textFieldDidEndEditing:(UITextField *)textField{
    //These lines of code do again save the info put into the edit info fields without hitting return just in case
    User *myUser = [User myUser];
    switch(textField.tag)
    {
        case NAMETAG:
            myUser.userName = self.firstNameField.text;
            [self.firstNameField resignFirstResponder];
            break;
        case BIRTHDAYTAG:
            myUser.birthDay = self.birthdayField.text;
            [self.birthdayField resignFirstResponder];
            break;
        case AGETAG:
            myUser.age = self.ageField.text;
            [self.ageField resignFirstResponder];
            break;
        case ALLERGIESTAG:
           myUser.allergies = self.allergiesField.text;
            [self.allergiesField resignFirstResponder];
            break;
        case MEDICATIONTAG:
            myUser.medication = self.medicationField.text;
            [self.medicationField resignFirstResponder];
            break;
        case NAME1: //name1
            myUser.name1 = self.name1.text;
            [self.name1 resignFirstResponder];
            break;
        case NUMBER1: //number1
            myUser.number1 = self.number1.text;
            [self.number1 resignFirstResponder];
            break;
        case RELATION1: //relation1
            myUser.relation1 = self.relation1.text;
            [self.relation1 resignFirstResponder];
            break;
        case NAME2: //name2
           myUser.name2 = self.name2.text;
            [self.name2 resignFirstResponder];
            break;
        case NUMBER2: //number2
            myUser.number2 = self.number2.text;
            [self.number2 resignFirstResponder];
            break;
        case RELATION2: //relation2
            myUser.relation2 = self.relation2.text;
            [self.relation2 resignFirstResponder];
            break;
        case NAME3: //name3
            myUser.name3 = self.name3.text;
            [self.name3 resignFirstResponder];
            break;
        case NUMBER3: //number3
            myUser.number3 = self.number3.text;
            [self.number3 resignFirstResponder];
            break;
        case RELATION3: //relation3
            myUser.relation3 = self.relation3.text;
            [self.relation3 resignFirstResponder];
            break;
            
    }
    
}


-(void)textFieldDidBeginEditing:(UITextField*)textField{
    
}
///////////////////////////////////////////////////////////

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    //Segues and buttons pressed
    if ([segue.identifier isEqualToString:@"showInfo"]) {
     //   ViewInfoViewController *modelController = (ViewInfoViewController *)segue.destinationViewController;
     //   modelController.userData = myUser;
    }
    else if ([segue.identifier isEqualToString:@"saveInfo"]) {
     //   _0ViewController *modelController = (_0ViewController *)segue.destinationViewController;
      //  modelController.userData = myUser;
    }
}


- (IBAction)saveButton:(id)sender {
    //creates and updates the NSUserDefaults
    NSString *firstName = [ self.firstNameField text];
    NSString *birthDay = [self.birthdayField text];
    NSString *age = [self.ageField text];
    NSString *medication = [self.medicationField text];
    NSString *allergies = [self.allergiesField text];
    NSString *name1 = [self.name1 text];
    NSString *name2 = [self.name2 text];
    NSString *name3 = [self.name3 text];
    NSString *number1 = [self.number1 text];
    NSString *number2 = [self.number2 text];
    NSString *number3 = [self.number3 text];
    NSString *relation1 = [self.relation1 text];
    NSString *relation2 = [self.relation2 text];
    NSString *relation3 = [self.relation3 text];
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setObject:firstName forKey:@"firstName"];[[NSUserDefaults standardUserDefaults] synchronize];
    [defaults setObject:birthDay forKey:@"birthday"];[[NSUserDefaults standardUserDefaults] synchronize];
    [defaults setObject:age forKey:@"age"];[[NSUserDefaults standardUserDefaults] synchronize];
    [defaults setObject:medication forKey:@"medication"];[[NSUserDefaults standardUserDefaults] synchronize];
    [defaults setObject:allergies forKey:@"allergies"];[[NSUserDefaults standardUserDefaults] synchronize];
    [defaults setObject:name1 forKey:@"name1"];[[NSUserDefaults standardUserDefaults] synchronize];
    [defaults setObject:name2 forKey:@"name2"];[[NSUserDefaults standardUserDefaults] synchronize];
    [defaults setObject:name3 forKey:@"name3"];[[NSUserDefaults standardUserDefaults] synchronize];
    [defaults setObject:number1 forKey:@"number1"];[[NSUserDefaults standardUserDefaults] synchronize];
    [defaults setObject:number2 forKey:@"number2"];[[NSUserDefaults standardUserDefaults] synchronize];
    [defaults setObject:number3 forKey:@"number3"];[[NSUserDefaults standardUserDefaults] synchronize];
    [defaults setObject:relation1 forKey:@"relation1"];[[NSUserDefaults standardUserDefaults] synchronize];
    [defaults setObject:relation2 forKey:@"relation2"];[[NSUserDefaults standardUserDefaults] synchronize];
    [defaults setObject:relation3 forKey:@"relation3"];[[NSUserDefaults standardUserDefaults] synchronize];
    
    //update myUser singleton
    User *myUser = [User myUser];
    myUser.userName = self.firstNameField.text;
    myUser.birthDay = self.birthdayField.text;
    myUser.age = self.ageField.text;
    myUser.medication = self.medicationField.text;
    myUser.allergies = self.allergiesField.text;
    myUser.name1 = self.name1.text;
    myUser.name2 = self.name2.text;
    myUser.name3 = self.name3.text;
    myUser.number1 = self.number1.text;
    myUser.number2 = self.number2.text;
    myUser.number3 = self.number3.text;
    myUser.relation1 = self.relation1.text;
    myUser.relation2 = self.relation2.text;
    myUser.relation3 = self.relation3.text;
    
    [[NSUserDefaults standardUserDefaults] synchronize]; //NSUserDefaults doesn't *always save. This allows it to do so
    NSLog(@"Data saved");
}

@end
