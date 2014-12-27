//
//  ViewController.m
//  jenkinsTest02
//
//  Created by Imai Hiroshi on 12/27/14.
//  Copyright (c) 2014 Imai Hiroshi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	
	UILabel* label = [UILabel new];
	label.frame = self.view.bounds;
	label.text = @"JenkinsTest!!!";
	label.textAlignment = NSTextAlignmentCenter;
	label.font = [UIFont systemFontOfSize:32];
	label.textColor = [UIColor yellowColor];
	label.backgroundColor = [UIColor lightGrayColor];
	[self.view addSubview:label];

}

- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}

@end
