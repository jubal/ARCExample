//
//  JHViewController.h
//  ARCExample
//
//  Created by Jubal Hoo on 10/5/12.
//  Copyright (c) 2012 MarsLight Studio. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JHViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIButton *ARCButton;
@property (weak, nonatomic) IBOutlet UIButton *noARCButton;


- (IBAction)testArc:(id)sender;
- (IBAction)testNoARC:(id)sender;

@end
