//
//  ViewController.m
//  files1
//
//  Created by MSE on 23/09/13.
//  Copyright (c) 2013 MSE. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize textbox;
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

- (IBAction)get:(id)sender
{
    NSFileManager *filemgr;
    filemgr=[NSFileManager defaultManager];
    NSArray *ddirectory=NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *a=[ddirectory objectAtIndex:0];
    NSString *directory=[NSString stringWithFormat:@"%@/text3.txt",a];
    if ([filemgr fileExistsAtPath:directory])
    {
        NSFileHandle *file;
        file=[NSFileHandle fileHandleForUpdatingAtPath:directory];
        if ([filemgr fileExistsAtPath:directory])
        {
       if (file==nil)
        {
            //alert
            UIAlertView *alert=[[UIAlertView alloc]initWithTitle:@"Error" message:@"Error Occured" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
            [alert show];
        }
        else
        {
            textbox.text=[NSString stringWithContentsOfFile:directory encoding:NSUTF8StringEncoding error:NULL
                         ];
        }
        }
       
        
    }
else
{
    UIAlertView *alert=[[UIAlertView alloc]initWithTitle:@"Error" message:@"File does not exist" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
    [alert show];
}
}

- (IBAction)set:(id)sender
{
    NSFileManager *filemgr;
    filemgr=[NSFileManager defaultManager];
    NSArray *ddirectory=NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *a=[ddirectory objectAtIndex:0];
    NSString *directory=[NSString stringWithFormat:@"%@/text3.txt",a];
    if ([filemgr fileExistsAtPath:directory])
    {
        NSFileHandle *file;
        file=[NSFileHandle fileHandleForUpdatingAtPath:directory];
        if (file==nil)
        {
            //alert
            UIAlertView *alert=[[UIAlertView alloc]initWithTitle:@"Error" message:@"File is Read Only" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
            [alert show];
        }
        else
        {
            [file seekToEndOfFile];
            [textbox.text writeToFile:directory atomically:YES encoding:NSUTF8StringEncoding error:NULL];
            [file closeFile];
            textbox.text=@"";
        }
        
    }
    else
    {
        [filemgr createFileAtPath:directory contents:nil attributes:nil];
        NSFileHandle *file;
        file=[NSFileHandle fileHandleForUpdatingAtPath:directory];
        [file seekToEndOfFile];
        [textbox.text writeToFile:directory atomically:YES encoding:NSUTF8StringEncoding error:NULL];
        [file closeFile];
        textbox.text=@"";
    }
}
@end
