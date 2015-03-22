//
//  ViewController.m
//  AlertDemo
//
//  Created by Mario Abruzzi on 3/22/15.
//  Copyright (c) 2015 FWS. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)alertBtn:(UIButton *)sender {
    [self showAlert];
}

- (void)showAlert {
    
    // Instantiate an Alert (View) Controller object to display an alert message to the user.
    //
    UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:@"Alert Title"
                                                                     message:@"Alert Message"
                                                              preferredStyle:UIAlertControllerStyleAlert];
    
    // Instantiate an alert button that performs an action.
    //
    UIAlertAction *defaultAction = [UIAlertAction actionWithTitle:@"Default"
                                                            style:UIAlertActionStyleDefault
                                                          handler:^(UIAlertAction *action) {
                                                              // [action doSomething];
                                                              NSLog(@"Default alert action button tapped.");
                                                          }];
    
    // Instantiate an alert button that performs a cancel action.
    //
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"Cancel"
                                                           style:UIAlertActionStyleDefault
                                                         handler:^(UIAlertAction *action) {
                                                             [alertVC dismissViewControllerAnimated:YES
                                                                                       completion:nil];
                                                         }];
    
    // Attaches an action object to the alert or action sheet.
    //
    [alertVC addAction:defaultAction];
    
    // Attaches an action object to the alert or action sheet.
    //
    [alertVC addAction:cancelAction];
    
    // Adds a text field to the alert with a block for configuring the text field
    // prior to displaying the alert. This block has no return value and takes a
    // single parameter corresponding to the text field object. Use that parameter
    // to change the text field properties.
    //
    [alertVC addTextFieldWithConfigurationHandler:^(UITextField *textField1) {
        textField1.placeholder = @"Field 1";
    }];
    
    // Presents a view controller modally.
    //
    [self presentViewController:alertVC animated:YES completion:nil];
    
}

@end
