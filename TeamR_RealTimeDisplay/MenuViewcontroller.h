//
//  MenuViewcontroller.h
//  TeamR_RealTimeDisplay
//
//  Created by Darin McCarren on 2/4/16.
//  Copyright © 2016 Darin McCarren. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SWUITableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *label3;
@property (weak, nonatomic) IBOutlet UILabel *label2;
@property (weak, nonatomic) IBOutlet UILabel *label1;
@property (nonatomic) IBOutlet UILabel *label;
@end

@interface MenuViewcontroller : UITableViewController

@end
