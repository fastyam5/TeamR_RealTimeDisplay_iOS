//
//  MenuViewcontroller.m
//  TeamR_RealTimeDisplay
//
//  Created by Darin McCarren on 2/4/16.
//  Copyright © 2016 Darin McCarren. All rights reserved.
// ID Lat long name department 

#import "MenuViewcontroller.h"
#import "assetModel.h"
#import "ViewController.h"
#import "AppDelegate.h"



@implementation SWUITableViewCell
@end

@implementation MenuViewcontroller





#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 6;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    
    switch ( indexPath.row )
    {
        case 0:
        {
            CellIdentifier = @"blue";
            break;
        }
            
        case 1:
        {
            CellIdentifier = @"map";
            break;
        }
            
        case 2:
        {
            CellIdentifier = @"red";
            break;
        }
        case 3:
        {
            CellIdentifier = @"purple";
            break;
        }
        case 4:
        {
            CellIdentifier = @"black";
            break;
        }
        case 5:
        {
            CellIdentifier = @"green";
            break;
        }
    }
    //assetList will hold the assest filtering list that will be dynamic
    NSMutableArray *assetList = [NSMutableArray arrayWithObjects:@"All",@"Fire Department", @"Police Department", @"FBI",@"EMS", @"Other" , nil];
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier: CellIdentifier forIndexPath: indexPath];
    UILabel *lblTemp1 = (UILabel *)[cell viewWithTag:1];
    UILabel *lblTemp2 = (UILabel *)[cell viewWithTag:2];
    UILabel *lblTemp3 = (UILabel *)[cell viewWithTag:3];
    UILabel *lblTemp4 = (UILabel *)[cell viewWithTag:4];
    UILabel *lblTemp5 = (UILabel *)[cell viewWithTag:5];
    UILabel *lblTemp6 = (UILabel *)[cell viewWithTag:6];
    lblTemp1.text = [assetList objectAtIndex:0];
    lblTemp2.text = [assetList objectAtIndex:1];
    lblTemp3.text = [assetList objectAtIndex:2];
    lblTemp4.text = [assetList objectAtIndex:3];
    lblTemp5.text = [assetList objectAtIndex:4];
    lblTemp6.text = [assetList objectAtIndex:5];
    
    UIView *customColorView = [[UIView alloc] init];
    customColorView.backgroundColor = [UIColor colorWithRed:180/255.0
                                                      green:138/255.0
                                                       blue:171/255.0
                                                      alpha:0.5];
    cell.selectedBackgroundView =  customColorView;
    
    
    return cell;
   
    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    NSIndexPath *path = indexPath;
    NSInteger theInteger = path.row + 1;
    AppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
    
    if (indexPath.row == 0)
    {
        if (appDelegate.isPressed1 == false)
        {
            appDelegate.numPressed1 = theInteger;
            appDelegate.isPressed1 = true;
        }
        else
        {
            appDelegate.numPressed1 = theInteger;
            appDelegate.isPressed1 = false;
            
        }
        
    }
    if (indexPath.row == 1)
    {
        if (appDelegate.isPressed2 == false)
        {
            appDelegate.numPressed2 = theInteger;
            appDelegate.isPressed2 = true;
        }
        else
        {
            appDelegate.numPressed2 = theInteger;
            appDelegate.isPressed2 = false;
            
        }
        
    }
    if (indexPath.row == 2)
    {
        if (appDelegate.isPressed3 == false)
        {
            appDelegate.numPressed3 = theInteger;
            appDelegate.isPressed3 = true;
        }
       else
       {
            appDelegate.numPressed3 = theInteger;
            appDelegate.isPressed3 = false;
            
        }
    }
    if (indexPath.row == 3)
    {
        if (appDelegate.isPressed4 == false)
        {
            appDelegate.numPressed4 = theInteger;
            appDelegate.isPressed4 = true;
        }
        else
        {
            appDelegate.numPressed4 = theInteger;
            appDelegate.isPressed4 = false;
            
        }
    }
    if (indexPath.row == 4)
    {
        if (appDelegate.isPressed5 == false)
        {
            appDelegate.numPressed5 = theInteger;
            appDelegate.isPressed5 = true;
        }
        else
        {
            appDelegate.numPressed5 = theInteger;
            appDelegate.isPressed5 = false;
            
        }
    }
    if (indexPath.row == 5)
    {
        if (appDelegate.isPressed6 == false)
        {
            appDelegate.numPressed6 = theInteger;
            appDelegate.isPressed6 = true;
        }
        else 
        {
            appDelegate.numPressed6 = theInteger;
            appDelegate.isPressed6 = false;
            
        }
    }

  
}

#pragma mark state preservation / restoration
- (void)encodeRestorableStateWithCoder:(NSCoder *)coder {
    NSLog(@"%s", __PRETTY_FUNCTION__);
    
    // TODO save what you need here
    [super encodeRestorableStateWithCoder:coder];
}

- (void)decodeRestorableStateWithCoder:(NSCoder *)coder {
    NSLog(@"%s", __PRETTY_FUNCTION__);
    
    // TODO restore what you need here
    [super decodeRestorableStateWithCoder:coder];
}

- (void)applicationFinishedRestoringState {
    NSLog(@"%s", __PRETTY_FUNCTION__);
    
    // TODO call whatever function you need to visually restore
}

@end