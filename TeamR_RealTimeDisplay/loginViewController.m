//
//  ViewController.m
//  Login
//
//  Created by Tyler Maas on 2/22/16.
//  Copyright © 2016 Tyler Maas. All rights reserved.
//

#import "loginViewController.h"

@interface loginViewController ()

@end

@implementation loginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _infodictionary = [NSDictionary dictionaryWithObjects:[NSArray arrayWithObjects:@"password", nil] forKeys:[NSArray arrayWithObjects:@"username", nil]];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)textFieldShouldEndEditing:(UITextField *)textField;
{   // Tell textField it is OK to end editing
    return YES;
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{   // tell textField to do something when the "return" button
    // is pressed on the keyboard
    [textField resignFirstResponder];
    [self.view endEditing:YES];
    return YES;
}

- (IBAction)buttonPressed:(UIButton *)sender
{
    if ([[_infodictionary objectForKey:_username.text]isEqualToString:_password.text])
    {
        //UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Correct Password" message:@"The password is correct" delegate:self cancelButtonTitle:@"Dismiss" otherButtonTitles: nil];
        //[alert show];
        //Step 1: Create a UIAlertController
        UIAlertController *myAlertController = [UIAlertController alertControllerWithTitle:@"Correct Password" message: @"You entered the correct password." preferredStyle:UIAlertControllerStyleAlert];
        
        //Step 2: Create a UIAlertAction that can be added to the alert
        UIAlertAction* ok = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * action)
                             {//dismiss the alertwindow
                             [myAlertController dismissViewControllerAnimated:YES completion:nil];}];
        
        //Step 3: Add the UIAlertAction ok that we just created to our AlertController
        [myAlertController addAction: ok];
        
        //Step 4: If password is correct move to the mapView
        [self performSegueWithIdentifier:@"showMap" sender:nil];
    }
    else
    {
        //UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Wrong Password" message:@"The password is incorrect" delegate:self cancelButtonTitle:@"Dismiss" otherButtonTitles: nil];
        //[alert show];
        //Step 1: Create a UIAlertController
        UIAlertController *myAlertController = [UIAlertController alertControllerWithTitle:@"Wrong password" message: @"You entered the wrong password" preferredStyle:UIAlertControllerStyleAlert];
        
        //Step 2: Create a UIAlertAction that can be added to the alert
        UIAlertAction* ok = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * action)
                             {//dismiss the alertwindow
                             [myAlertController dismissViewControllerAnimated:YES completion:nil];}];
        
        //Step 3: Add the UIAlertAction ok that we just created to our AlertController
        [myAlertController addAction: ok];
        
        //Step 4: Present the alert to the user
        [self presentViewController:myAlertController animated:YES completion:nil];
        
    }
}
@end
