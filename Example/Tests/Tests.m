//
//  ConfigurableCoreDataStacksTests.m
//  ConfigurableCoreDataStacksTests
//
//  Created by Martin Nash on 03/05/2015.
//  Copyright (c) 2014 Martin Nash. All rights reserved.
//

@import XCTest;
@import CoreData;
@import Foundation;

#import "ConfigurableCoreDataStack.h"
#import "CoreDataStackConfiguration.h"

@interface MyTests : XCTestCase
@end

@implementation MyTests

-(void)testSetup
{
    NSString *fakeAppID = [[NSUUID UUID] UUIDString];
    NSString *dataFileName = @"DataFile.something";
    
    CoreDataStackConfiguration *config;
    config = [CoreDataStackConfiguration configurationWithStoreType:NSSQLiteStoreType
                                                          modelName:@"Model"
                                                      appIdentifier:fakeAppID
                                          dataFileNameWithExtension:dataFileName
                                                searchPathDirectory:NSApplicationSupportDirectory];
    XCTAssertNotNil(config);
    

    
    ConfigurableCoreDataStack *stack = [ConfigurableCoreDataStack stackWithConfiguration:config];
    XCTAssertNotNil(stack);
    XCTAssertNotNil(stack.managedObjectContext);
    

}

-(void)testFileCreationAndDeletion
{
    NSString *fakeAppID = [[NSUUID UUID] UUIDString];
    NSString *dataFileName = @"DataFile.againsomething";
    
    CoreDataStackConfiguration *config;
    config = [CoreDataStackConfiguration configurationWithStoreType:NSSQLiteStoreType modelName:@"Model" appIdentifier:fakeAppID dataFileNameWithExtension:dataFileName searchPathDirectory:NSApplicationSupportDirectory];

    ConfigurableCoreDataStack *stack = [ConfigurableCoreDataStack stackWithConfiguration:config];
    id moc = stack.managedObjectContext;
    moc = nil;

    // confirm file exists
    BOOL fileExists = [[NSFileManager defaultManager] fileExistsAtPath:stack.dataFileURL.path];
    XCTAssertTrue(fileExists);
    
    // confirm deleting files works
    [stack removeCoreDataFilesFromDisk];
    BOOL fileExistsAfterDeletion = [[NSFileManager defaultManager] fileExistsAtPath:stack.dataFileURL.path];
    XCTAssertFalse(fileExistsAfterDeletion);
    
    // confirm that files are created again after MOC initialized
    [stack managedObjectContext];
    BOOL fileExistsAfterLazyLoad = [[NSFileManager defaultManager] fileExistsAtPath:stack.dataFileURL.path];
    XCTAssertTrue(fileExistsAfterLazyLoad);

    
}


@end


