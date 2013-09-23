//
//  ViewController.m
//  login1
//
//  Created by MSE on 22/09/13.
//  Copyright (c) 2013 MSE. All rights reserved.
//
#import "SViewController.h"
#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize uname;
@synthesize pass;
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)login:(id)sender {
    SViewController *log=[[SViewController alloc]init];
    if([uname.text isEqual:@"abc"])
    {
        if ([pass.text isEqual:@"abc"])
        {
            [self presentViewController:log animated:YES completion:NULL];
        }
        
        
    }
else
{
    UIAlertView *alert=[[UIAlertView alloc]initWithTitle:@"Warning" message:@"Invalid Combination" delegate:nil cancelButtonTitle:@"Try Again" otherButtonTitles:nil];
    [alert show];
    
}
}
@end
