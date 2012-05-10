//
//  JHViewController.m
//  ARCExample
//
//  Created by Jubal Hoo on 10/5/12.
//  Copyright (c) 2012 MarsLight Studio. All rights reserved.
//

#import "JHViewController.h"
#import "JHDataObject_ARC.h"
#import "JHDataObject_NOARC.h"

@interface JHViewController ()

@end

@implementation JHViewController
@synthesize ARCButton;
@synthesize noARCButton;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self setARCButton:nil];

    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (void) dealloc
{
    //
    // in arc, you could execute sth. in dealloc, but should not call 'super'
    NSLog(@"Function:%s called", __FUNCTION__);
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (IBAction)testArc:(id)sender {
    [JHDataObject_ARC test];
}

- (IBAction)testNoARC:(id)sender {
    [JHDataObject_NOARC test];
}
@end
