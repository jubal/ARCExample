//
//  JHDataObject_NOARC.h
//  ARCExample
//
//  Created by Jubal Hoo on 10/5/12.
//  Copyright (c) 2012 MarsLight Studio. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JHDataObject_NOARC : NSObject

@property (nonatomic, retain) NSString * retainString;
@property (nonatomic, assign) NSString * assignString;
@property (nonatomic, retain) NSMutableArray * retainArray;
@property (nonatomic, assign) NSMutableArray * assignArray;

+ (void) test;

@end
