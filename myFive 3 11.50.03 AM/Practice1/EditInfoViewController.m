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
    [super viewDidLoad];
    [(UIScrollView*)self.view setContentSize:CGSizeMake(320, 784)]; //screen size
    //////////////////////////////////////////////////////
    
    //The below lines of code are used to save text data inputted into the edit info fields in the app
    if(self.userData == nil)
    {
        self.userData = [[User alloc] init];
    }
    else {
        self.firstNameField.text = self.userData.userName;
        self.birthdayField.text = self.userData.birthDay;
        self.ageField.text = self.userData.age;
        self.medicationField.text = self.userData.medication;
        self.allergiesField.text = self.userData.allergies;
        self.name1.text = self.userData.name1;
        self.name2.text = self.userData.name2;
        self.name3.text = self.userData.name3;
        self.number1.text = self.userData.number1;
        self.number2.text = self.userData.number2;
        self.number3.text = self.userData.number3;
        self.relation1.text = self.userData.relation1;
        self.relation2.text = self.userData.relation2;
        self.relation3.text = self.userData.relation3;
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


////////////////TextField Manipulation/////////////////////
- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    //Below lines of code save text inputted into the edit info fields using TAGs after hitting return
    //see below tags to see which ones are associated with which info field
    
    switch(textField.tag)
    {
        case NAMETAG: //name field
            self.userData.userName = self.firstNameField.text;
            [self.firstNameField resignFirstResponder];
            break;
        case BIRTHDAYTAG: //birthday field
            self.userData.birthDay = self.birthdayField.text;
            [self.birthdayField resignFirstResponder];
            break;
        case AGETAG: //age field
            self.userData.age = self.ageField.text;
            [self.ageField resignFirstResponder];
            break;
        case ALLERGIESTAG: //allergies field
            self.userData.allergies = self.allergiesField.text;
            [self.allergiesField resignFirstResponder];
            break;
        case MEDICATIONTAG: //medications field
            self.userData.medication = self.medicationField.text;
            [self.medicationField resignFirstResponder];
            break;
        case NAME1: //name1
            self.userData.name1 = self.name1.text;
            [self.name1 resignFirstResponder];
            break;
        case NUMBER1: //number1
            self.userData.number1 = self.number1.text;
            [self.number1 resignFirstResponder];
            break;
        case RELATION1: //relation1
            self.userData.relation1 = self.relation1.text;
            [self.relation1 resignFirstResponder];
            break;
        case NAME2: //name2
            self.userData.name2 = self.name2.text;
            [self.name2 resignFirstResponder];
            break;
        case NUMBER2: //number2
            self.userData.number2 = self.number2.text;
            [self.number2 resignFirstResponder];
            break;
        case RELATION2: //relation2
            self.userData.relation2 = self.relation2.text;
            [self.relation2 resignFirstResponder];
            break;
        case NAME3: //name3
            self.userData.name3 = self.name3.text;
            [self.name3 resignFirstResponder];
            break;
        case NUMBER3: //number3
            self.userData.number3 = self.number3.text;
            [self.number3 resignFirstResponder];
            break;
        case RELATION3: //relation3
            self.userData.relation3 = self.relation3.text;
            [self.relation3 resignFirstResponder];
            break;
            
    }
    
    return YES;
}

- (void)textFieldDidEndEditing:(UITextField *)textField{
    //These lines of code do again save the info put into the edit info fields without hitting return just in case
    switch(textField.tag)
    {
        case NAMETAG:
            self.userData.userName = self.firstNameField.text;
            [self.firstNameField resignFirstResponder];
            break;
        case BIRTHDAYTAG:
            self.userData.birthDay = self.birthdayField.text;
            [self.birthdayField resignFirstResponder];
            break;
        case AGETAG:
            self.userData.age = self.ageField.text;
            [self.ageField resignFirstResponder];
            break;
        case ALLERGIESTAG:
            self.userData.allergies = self.allergiesField.text;
            [self.allergiesField resignFirstResponder];
            break;
        case MEDICATIONTAG:
            self.userData.medication = self.medicationField.text;
            [self.medicationField resignFirstResponder];
            break;
        case NAME1: //name1
            self.userData.name1 = self.name1.text;
            [self.name1 resignFirstResponder];
            break;
        case NUMBER1: //number1
            self.userData.number1 = self.number1.text;
            [self.number1 resignFirstResponder];
            break;
        case RELATION1: //relation1
            self.userData.relation1 = self.relation1.text;
            [self.relation1 resignFirstResponder];
            break;
        case NAME2: //name2
            self.userData.name2 = self.name2.text;
            [self.name2 resignFirstResponder];
            break;
        case NUMBER2: //number2
            self.userData.number2 = self.number2.text;
            [self.number2 resignFirstResponder];
            break;
        case RELATION2: //relation2
            self.userData.relation2 = self.relation2.text;
            [self.relation2 resignFirstResponder];
            break;
        case NAME3: //name3
            self.userData.name3 = self.name3.text;
            [self.name3 resignFirstResponder];
            break;
        case NUMBER3: //number3
            self.userData.number3 = self.number3.text;
            [self.number3 resignFirstResponder];
            break;
        case RELATION3: //relation3
            self.userData.relation3 = self.relation3.text;
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
        ViewInfoViewController *modelController = (ViewInfoViewController *)segue.destinationViewController;
        modelController.userData = self.userData;
    }
    else if ([segue.identifier isEqualToString:@"saveInfo"]) {
        _0ViewController *modelController = (_0ViewController *)segue.destinationViewController;
        modelController.userData = self.userData;
    }
}


- (IBAction)saveButton:(id)sender {

}

@end
