//
//  SignInViewController.m
//  WikiPro
//
//  Created by Minhaz on 17/06/17.
//  Copyright © 2017 iqtech. All rights reserved.
//

#import "SignInViewController.h"
#import "Utility.h"

@interface SignInViewController ()
{
    __weak IBOutlet UITextField *tfEmail;
    __weak IBOutlet UITextField *tfPassword;

}
@end

@implementation SignInViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Actions
- (IBAction)onCloseBtClicked:(UIBarButtonItem *)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)onJoinBtClicked:(id)sender {
    
}

- (IBAction)onForgotPasswordBtClicked:(id)sender {
}

- (IBAction)onLoginBtClicked:(id)sender {
    [[Utility sharedInstance] setLogin:YES];
    [self dismissViewControllerAnimated:YES completion:nil];
}



@end
