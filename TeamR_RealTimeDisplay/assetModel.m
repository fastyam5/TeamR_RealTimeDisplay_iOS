//
//  Connection.m
//  TeamR_RealTimeDisplay
//
//  Created by Darin McCarren on 2/26/16.
//  Copyright © 2016 Darin McCarren. All rights reserved.
//
//  ID Lat long name department

#import "assetModel.h"

@implementation assetModel

-(instancetype)initWithDepartment:(NSString *)assestdepart ID:(int)assetID Latiude:(NSString *)assetLat Longitude:(NSString *)assetLong Name:(NSString *)assetName
{
    self = [super init];
    if(self){
    self.assetDepart = assestdepart;
    self.assetID = &(assetID);
    self.assetLat = assetLat;
    self.assetLong = assetLong;
    self.assetName = assetName;
    }
    
    
    
    return self;
}



@end
