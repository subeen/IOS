//
//  ViewController.h
//  files1
//
//  Created by MSE on 23/09/13.
//  Copyright (c) 2013 MSE. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
- (IBAction)get:(id)sender;
- (IBAction)set:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *textbox;

@end
