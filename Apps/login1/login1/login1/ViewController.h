//
//  ViewController.h
//  login1
//
//  Created by MSE on 22/09/13.
//  Copyright (c) 2013 MSE. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *uname;
@property (weak, nonatomic) IBOutlet UITextField *pass;

- (IBAction)login:(id)sender;

@end
