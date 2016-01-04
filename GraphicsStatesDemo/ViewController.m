//
//  ViewController.m
//  GraphicsStatesDemo
//
//  Created by Yu on 12/28/15.
//  Copyright © 2015 Heli. All rights reserved.
//

#import "ViewController.h"
#import "QuartzView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    QuartzView *view  = [[QuartzView alloc] initWithFrame:self.view.frame];
    [self.view addSubview:view];
}


@end
