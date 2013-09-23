//
//  SViewController.m
//  login1
//
//  Created by MSE on 22/09/13.
//  Copyright (c) 2013 MSE. All rights reserved.
//

#import "SViewController.h"
#import "ViewController.h"

@interface SViewController ()

@end

@implementation SViewController

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
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)logout:(id)sender {
    ViewController *lou=[[ViewController alloc]init];
    
    [self presentViewController:lou animated:YES completion:NULL];
}

@end
