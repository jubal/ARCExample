//
//  JHDataObject_ARC.m
//  ARCExample
//
//  Created by Jubal Hoo on 10/5/12.
//  Copyright (c) 2012 MarsLight Studio. All rights reserved.
//

#import "JHDataObject_ARC.h"

@implementation JHDataObject_ARC

@synthesize strongString = strongString_;
@synthesize weakString = weakString_;
@synthesize strongArray = strongArray_;
@synthesize weakArray = weakArray_;

- (id) init
{
    if (self = [super init]) {
        //
        // setup strings
        NSString * string = [[NSString alloc] initWithString: @"StringRetained"];
        self.strongString = string;
        self.weakString = self.strongString;
        
        //
        // setup array
        NSMutableArray * array = [[NSMutableArray alloc] initWithCapacity:1];
        self.strongArray = array;
        // add two objects to array
        NSString * arrayString1 = [[NSString alloc] initWithString:@"FirstArrayString"];
        [self.strongArray addObject:arrayString1];
        self.weakArray = self.strongArray;
        
    }
    return self;
}// init

- (NSString *) description
{
    return [NSString stringWithFormat:@"StrongString = %@ \n WeakString = %@ \n StrongArray = %@ \n WeakArray = %@",
            self.strongString, self.weakString, self.strongArray, self.weakArray];
}

+ (void) test
{
    JHDataObject_ARC * dataARC = [[JHDataObject_ARC alloc] init];
    NSLog(@"DATA INIT ARC: %@", dataARC);
    //
    // try to add another object
    [dataARC.strongArray addObject:[[JHDataObject_ARC alloc] init]];
    NSLog(@"AFTER TRY TO ADD SECOND STRING: %@",dataARC);
}

@end
