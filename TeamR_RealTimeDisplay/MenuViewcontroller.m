//
//  MenuViewcontroller.m
//  TeamR_RealTimeDisplay
//
//  Created by Darin McCarren on 2/4/16.
//  Copyright © 2016 Darin McCarren. All rights reserved.
//

#import "MenuViewcontroller.h"
#import "ViewController.h"


@implementation SWUITableViewCell
@end

@implementation MenuViewcontroller


- (void) prepareForSegue: (UIStoryboardSegue *) segue sender: (id) sender
{
    // configure the destination view controller:
    if ( [sender isKindOfClass:[UITableViewCell class]] )
    {
        
        UILabel* c = [(SWUITableViewCell *)sender label];
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
    return 3;
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
    }
    //assetList will hold the assest filtering list that will be dynamic
    NSMutableArray *assetList = [NSMutableArray arrayWithObjects:@"Type",@"Department",@"Status",  nil];
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier: CellIdentifier forIndexPath: indexPath];
    UILabel *lblTemp1 = (UILabel *)[cell viewWithTag:1];
    UILabel *lblTemp2 = (UILabel *)[cell viewWithTag:2];
    UILabel *lblTemp3 = (UILabel *)[cell viewWithTag:3];
    lblTemp1.text = [assetList objectAtIndex:0];
    lblTemp2.text = [assetList objectAtIndex:1];
    lblTemp3.text = [assetList objectAtIndex:2];;
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