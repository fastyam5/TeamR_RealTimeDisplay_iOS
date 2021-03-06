//
//  ViewController.h
//  TeamR_RealTimeDisplay
//
//  Created by Darin McCarren on 1/21/16.
//  Copyright © 2016 Darin McCarren. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CBAutoScrollLabel.h"
@import GoogleMaps;

@interface ViewController : UIViewController

@property (strong, nonatomic) NSMutableArray* assetData;
@property (strong, nonatomic) NSDictionary* assets;

@property (strong, nonatomic) IBOutlet GMSMapView *mapView;

@property (weak, nonatomic) IBOutlet CBAutoScrollLabel *urgentMessage;

@property (weak, nonatomic) IBOutlet UIBarButtonItem *barButton;

@property (nonatomic, retain) CLLocationManager *locationManager;
@property (nonatomic, assign) NSInteger indexPath;
@property (nonatomic, assign) NSInteger numberForCase;

@property NSTimer* myTimer;

@property NSTimer* myTimer2;








@end

