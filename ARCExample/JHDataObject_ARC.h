//
//  JHDataObject_ARC.h
//  ARCExample
//
//  Created by Jubal Hoo on 10/5/12.
//  Copyright (c) 2012 MarsLight Studio. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JHDataObject_ARC : NSObject

@property (nonatomic, strong) NSString * strongString;
@property (nonatomic, weak) NSString * weakString;
@property (nonatomic, strong) NSMutableArray * strongArray;
@property (nonatomic, weak) NSMutableArray * weakArray;

+ (void) test;

@end
