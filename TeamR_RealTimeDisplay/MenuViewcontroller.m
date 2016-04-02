//
//  MenuViewcontroller.m
//  TeamR_RealTimeDisplay
//
//  Created by Darin McCarren on 2/4/16.
//  Copyright © 2016 Darin McCarren. All rights reserved.
// ID Lat long name department 

#import "MenuViewcontroller.h"
#import "ViewController.h"
#import "assetModel.h"



@implementation SWUITableViewCell
@end

@implementation MenuViewcontroller



- (void) prepareForSegue: (UIStoryboardSegue *) segue sender: (id) sender
{
    // configure the destination view controller:
    if ( [sender isKindOfClass:[UITableViewCell class]] )
    {
        
        //UILabel* c = [(SWUITableViewCell *)sender label];
        UINavigationController *navController = segue.destinationViewController;
        ViewController* cvc = [navController childViewControllers].firstObject;
        if ( [cvc isKindOfClass:[ViewController class]] )
        {
            
        }
    }
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    ViewController *mainViewController = [[ ViewController alloc]init];
    return 5;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    
    switch ( indexPath.row )
    {
        case 0:
        {
            CellIdentifier = @"map";
            break;
        }
            
        case 1:
        {
            CellIdentifier = @"blue";
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
    }
    //assetList will hold the assest filtering list that will be dynamic
    NSMutableArray *assetList = [NSMutableArray arrayWithObjects:@"Police Department",@"Fire Department",@"FBI",@"EMS", @"Other" , nil];
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier: CellIdentifier forIndexPath: indexPath];
    UILabel *lblTemp1 = (UILabel *)[cell viewWithTag:1];
    UILabel *lblTemp2 = (UILabel *)[cell viewWithTag:2];
    UILabel *lblTemp3 = (UILabel *)[cell viewWithTag:3];
    UILabel *lblTemp4 = (UILabel *)[cell viewWithTag:4];
    UILabel *lblTemp5 = (UILabel *)[cell viewWithTag:5];
    lblTemp1.text = [assetList objectAtIndex:0];
    lblTemp2.text = [assetList objectAtIndex:1];
    lblTemp3.text = [assetList objectAtIndex:2];
    lblTemp4.text = [assetList objectAtIndex:3];
    lblTemp5.text = [assetList objectAtIndex:4];
    return cell;
   
    
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