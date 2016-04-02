//
//  Connection.h
//  TeamR_RealTimeDisplay
//
//  Created by Darin McCarren on 2/26/16.
//  Copyright © 2016 Darin McCarren. All rights reserved.
//
//  ID Lat long name department
#import <UIKit/UIKit.h>


@interface assetModel: NSObject

-(instancetype)initWithDepartment:(NSString *)assestdepart ID:(int)assestID Latiude:(NSString*)assetLat Longitude:(NSString*)assetLong Name:(NSString*)assetName;


@property (nonatomic, assign) int* assetID;
@property (nonatomic, assign) NSString* assetLat;
@property (nonatomic, assign) NSString* assetLong;
@property (nonatomic, assign) NSString* assetName;
@property (nonatomic, assign) NSString* assetDepart;

@property (strong, nonatomic) NSMutableArray <assetModel *>* assets;



@end

