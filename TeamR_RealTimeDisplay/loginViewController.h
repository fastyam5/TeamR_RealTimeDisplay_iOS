//
//  ViewController.h
//  Login
//
//  Created by Tyler Maas on 2/22/16.
//  Copyright © 2016 Tyler Maas. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface loginViewController : UIViewController

  @property  IBOutlet UITextField *username;
   @property IBOutlet UITextField *password;
    
  @property  NSDictionary *infodictionary;
  @property  IBOutlet UIView *loginView;
   @property __weak IBOutlet UILabel *label;

- (IBAction)buttonPressed:(UIButton *)sender;




@end

