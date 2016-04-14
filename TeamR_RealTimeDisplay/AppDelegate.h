//
//  AppDelegate.h
//  TeamR_RealTimeDisplay
//
//  Created by Darin McCarren on 1/21/16.
//  Copyright © 2016 Darin McCarren. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (nonatomic) NSInteger numPressed1;
@property (nonatomic) NSInteger numPressed2;
@property (nonatomic) NSInteger numPressed3;
@property (nonatomic) NSInteger numPressed4;
@property (nonatomic) NSInteger numPressed5;
@property (nonatomic) NSInteger numPressed6;
@property (nonatomic) NSString* url;
@property (nonatomic) BOOL isPressed1;
@property (nonatomic) BOOL isPressed2;
@property (nonatomic) BOOL isPressed3;
@property (nonatomic) BOOL isPressed4;
@property (nonatomic) BOOL isPressed5;
@property (nonatomic) BOOL isPressed6;
@property (nonatomic) BOOL skip;


@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;


- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;


@end

