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
 
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    // Create a GMSCameraPosition that tells the map to display the
    // coordinate -33.86,151.20 at zoom level 6.
    // GMSCameraPosition *camera = [GMSCameraPosition cameraWithLatitude:39.7633 longitude:-84.1911 zoom:6];
    // self.mapView = [GMSMapView mapWithFrame:CGRectZero camera:camera];
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
   
    
    
//    //Controls whether the My Location dot and accuracy circle is enabled.
//    
//    self.mapView.myLocationEnabled = YES;
//    
//    //Controls the type of map tiles that should be displayed.
//    
//    self.mapView.mapType = kGMSTypeNormal;
//    
//    //Shows the my location button on the map
//    
//    self.mapView.settings.myLocationButton = YES;
//    
//    //Sets the view controller to be the GMSMapView delegate
//    
//    self.mapView.delegate = self;
//
   

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
