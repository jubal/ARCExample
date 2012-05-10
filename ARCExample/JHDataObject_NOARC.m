//
//  JHDataObject_NOARC.m
//  ARCExample
//
//  Created by Jubal Hoo on 10/5/12.
//  Copyright (c) 2012 MarsLight Studio. All rights reserved.
//

#import "JHDataObject_NOARC.h"

@implementation JHDataObject_NOARC

@synthesize retainString = retainString_;
@synthesize assignString = assignString_;
@synthesize retainArray = retainArray_;
@synthesize assignArray = assignArray_;

- (id) init
{
    if (self = [super init]) {
        //
        // setup strings
        NSString * string = [[NSString alloc] initWithString: @"StringRetained"];
        self.retainString = string;
        [string release];
        self.assignString = self.retainString;
        
        //
        // setup array
        NSMutableArray * array = [[NSMutableArray alloc] initWithCapacity:1];
        self.retainArray = array;
        [array release];
        // add two objects to array
        NSString * arrayString1 = [[NSString alloc] initWithString:@"FirstArrayString"];
        [self.retainArray addObject:arrayString1];
        [arrayString1 release];
        self.assignArray = self.retainArray;

    }
    return self;
}// init

- (void) dealloc
{
    [retainString_ release];
    retainString_ = nil;
    self.assignString = nil;
    self.retainArray = nil;
    self.assignArray = nil;
    
    [super dealloc];
}// dealloc

- (NSString *) description
{
    return [NSString stringWithFormat:@"RetainString = %@ \n AssignString = %@ \n RetainArray = %@ \n AssignArray = %@",
            self.retainString, self.assignString, self.retainArray, self.assignArray];

}// description

+ (void) test
{
    JHDataObject_NOARC * dataNoArc = [[JHDataObject_NOARC alloc] init];
    NSLog(@"DATA INIT NOARC: %@", dataNoArc);
    //
    // add second string to array
    [dataNoArc.retainArray addObject:[[NSString alloc] initWithString:@"SecondArrayString"]];
    NSLog(@"ADD SECOND STRING: %@", dataNoArc);
    // to avoid leakage
    NSString * arrayString1 = [dataNoArc.retainArray lastObject];
    [arrayString1 release];
    
    //
    // go to test assign
    dataNoArc.retainString = nil;
    NSLog(@"DATA AFTER REMOVE RETAINSTRING: %@", dataNoArc);
    
    dataNoArc.retainArray = nil;
    NSLog(@"DATA AFTER REMOVE RETAINARRAY: %@", dataNoArc);
    
    [dataNoArc release];
}

@end
