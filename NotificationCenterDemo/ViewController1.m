//
//  ViewController1.m
//  NotificationCenterDemo
//
//  Created by Stronger Shen on 13/10/22.
//  Copyright (c) 2013年 MobileIT. All rights reserved.
//

#import "ViewController1.h"

@interface ViewController1 ()

@end

@implementation ViewController1

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnHide:(id)sender {
    [[NSNotificationCenter defaultCenter] postNotificationName:@"HideBtn1" object:nil];
}



@end
