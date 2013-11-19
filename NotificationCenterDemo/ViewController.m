//
//  ViewController.m
//  NotificationCenterDemo
//
//  Created by Stronger Shen on 13/10/22.
//  Copyright (c) 2013年 MobileIT. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (strong, nonatomic) IBOutlet UIButton *btn1;
@property (strong, nonatomic) IBOutlet UIButton *btn2;
@property (strong, nonatomic) IBOutlet UIButton *btn3;

@end

@implementation ViewController

-(void)hideBtn1:(NSNotification *)notification
{
    [self.btn1 setHidden:YES];
}

-(void)hideBtn2:(NSNotification *)notification
{
    [self.btn2 setHidden:YES];
}

-(void)hideBtn3:(NSNotification *)notification
{
    [self.btn3 setHidden:YES];
}


- (BOOL)prefersStatusBarHidden {
    return YES;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    

    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(hideBtn1:)
                                                 name:@"HideBtn1"
                                               object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(hideBtn2:)
                                                 name:@"HideBtn2"
                                               object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(hideBtn3:)
                                                 name:@"HideBtn3"
                                               object:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}


- (IBAction)btn1Action:(id)sender {
}

- (IBAction)btn2Action:(id)sender {
}

- (IBAction)btn3Action:(id)sender {
}

- (IBAction)showButtonsAction:(id)sender {
    [self.btn1 setHidden:NO];
    [self.btn2 setHidden:NO];
    [self.btn3 setHidden:NO];
    
}


@end
