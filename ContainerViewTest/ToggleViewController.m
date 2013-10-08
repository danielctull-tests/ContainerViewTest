//
//  ToggleViewController.m
//  ContainerViewTest
//
//  Created by Daniel Tull on 08.10.2013.
//  Copyright (c) 2013 Daniel Tull. All rights reserved.
//

#import "ToggleViewController.h"

@interface ToggleViewController ()
@property (nonatomic) IBOutlet UISegmentedControl *segmentedControl;
@property (nonatomic) IBOutletCollection(UIView) NSArray *containers;
@end

@implementation ToggleViewController

- (void)viewDidLoad {
    [super viewDidLoad];
	[self layoutContainers];
}

- (IBAction)segmentedControlChanged:(id)sender {
	[self layoutContainers];
}

- (void)layoutContainers {
	UIView *container = [self.containers objectAtIndex:self.segmentedControl.selectedSegmentIndex];
	[self.containers makeObjectsPerformSelector:@selector(setHidden:) withObject:@YES];
	container.hidden = NO;
}

@end
