//
//  ViewController.m
//  TeamR_RealTimeDisplay
//
//  Created by Darin McCarren on 1/21/16.
//  Copyright © 2016 Darin McCarren. All rights reserved.
//

#import "ViewController.h"
@import GoogleMaps;

@interface ViewController ()

@end

@implementation ViewController
{
    GMSMapView *mapView_;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    // Create a GMSCameraPosition that tells the map to display the
    // coordinate -33.86,151.20 at zoom level 6.
    GMSCameraPosition *camera = [GMSCameraPosition cameraWithLatitude:39.7633 longitude:-84.1911 zoom:6];
    mapView_ = [GMSMapView mapWithFrame:CGRectZero camera:camera];
    mapView_.myLocationEnabled = YES;
    self.view = mapView_;
    
    // Creates a marker in the center of the map.
    GMSMarker *marker = [[GMSMarker alloc] init];
    marker.position = CLLocationCoordinate2DMake(39.7633 , -84.1911);
    marker.title = @"Dayton";
    marker.snippet = @"Ohio";
    marker.map = mapView_;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
