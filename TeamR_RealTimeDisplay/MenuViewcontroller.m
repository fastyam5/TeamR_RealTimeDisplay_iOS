//
//  MenuViewcontroller.m
//  TeamR_RealTimeDisplay
//
//  Created by Darin McCarren on 2/4/16.
//  Copyright © 2016 Darin McCarren. All rights reserved.
//

#import "MenuViewcontroller.h"
#import "SWRevealViewController.h"

@implementation SWUITableViewCell

@end

@implementation MenuViewcontroller


//- (void) prepareForSegue: (UIStoryboardSegue *) segue sender: (id) sender
//{
    // configure the destination view controller:

//}


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
            CellIdentifier = @"map";
            break;
            
        case 1:
            CellIdentifier = @"blue";
            break;
            
        case 2:
            CellIdentifier = @"red";
            break;
    }
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier: CellIdentifier forIndexPath: indexPath];
    
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