//
//  ViewController.m
//  TeamR_RealTimeDisplay
//
//  Created by Darin McCarren on 1/21/16.
//  Copyright © 2016 Darin McCarren. All rights reserved.
//

#import "ViewController.h"
#import "CBAutoScrollLabel.h"
#import "SWRevealViewController.h"
@import GoogleMaps;


@interface ViewController ()

@end

@implementation ViewController
{
 
}

- (void)viewDidLoad {
    [super viewDidLoad];
    ////////////////////////////////////////////////////////////////////
    //DATABASE
    //Assets ( ID Location(gps) Type title Department group status goal)
    ////////////////////////////////////////////////////////////////////
    // Do any additional setup after loading the view, typically from a nib.
    // Create a GMSCameraPosition that tells the map to display the
    // coordinate -33.86,151.20 at zoom level 6.
    GMSCameraPosition *camera = [GMSCameraPosition cameraWithLatitude:39.7633 longitude:-84.1911 zoom:6];
    self.mapView = [GMSMapView mapWithFrame:CGRectZero camera:camera];
    self.mapView.myLocationEnabled = YES;
    self.mapView.settings.compassButton = YES;
    self.mapView.settings.myLocationButton = YES;
    //self.mapView.delegate = self;
    
    // Creates a marker in the center of the map.
    GMSMarker *marker = [[GMSMarker alloc] init];
    marker.position = CLLocationCoordinate2DMake(39.7633 , -84.1911);
    marker.title = @"Dayton";
    marker.snippet = @"Ohio";
    marker.map = self.mapView;
    
    // Code to make text scroll in the urgent message when message is to long
    self.urgentMessage.textColor = [UIColor blackColor];
    self.urgentMessage.backgroundColor = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.0];
    self.urgentMessage.textAlignment = NSTextAlignmentCenter;
    self.urgentMessage.font = [UIFont boldSystemFontOfSize:18];
    self.urgentMessage.pauseInterval = 1.5;
    self.urgentMessage.fadeLength = 0;
    self.urgentMessage.text = @"Urgent Messages: This is a test to verify that auto scrolling is working correctly";
    [self.urgentMessage observeApplicationNotifications];
    [self customSetup];

}

- (void)customSetup
{
    SWRevealViewController *revealViewController = self.revealViewController;
    if ( revealViewController )
    {
        [self.barButton setTarget: self.revealViewController];
        [self.barButton setAction: @selector( revealToggle: )];
        [self.navigationController.navigationBar addGestureRecognizer: self.revealViewController.panGestureRecognizer];
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
