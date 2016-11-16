//
//  LoginViewController.m
//  iFavor
//
//  Created by Camila Bressan on 15/11/16.
//  Copyright © 2016 Camila Bressan. All rights reserved.
//

#import "LoginViewController.h"
#import "ViewController.swift"


@interface LoginViewController ()

@end

@implementation LoginViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    [self initializeLayout];
    [self initializeData];
    
}

- (void)initializeLayout {
    
    self.loginBoxView.layer.cornerRadius = 15;
    self.loginBoxView.clipsToBounds = YES;
    
    self.loginBoxView.layer.shadowColor = [UIColor blueColor].CGColor;
    
}

- (void)initializeData {
    
    self.userData = [[NSMutableDictionary alloc] init];
    
    [self.userData setValue:@"bruno@ifavor.com" forKey:@"abcde"];
    [self.userData setValue:@"camila@ifavor.com" forKey:@"abcde"];
    [self.userData setValue:@"paula@ifavor.com" forKey:@"abcde"];
    [self.userData setValue:@"tiago@ifavor.com" forKey:@"abcde"];
    
}

- (UIStatusBarStyle)preferredStatusBarStyle {
    return UIStatusBarStyleLightContent;
}

- (IBAction)enterButtonClicked:(id)sender {
    
    if ([self.emailTextView.text isEqualToString:[self.userData valueForKey:self.passwordTextView.text]]) {
        
        NSString *storyboardName = @"Main";
        UIStoryboard *storyboard = [UIStoryboard storyboardWithName:storyboardName bundle: nil];
        UIViewController * vc = [storyboard instantiateViewControllerWithIdentifier:@"ViewController"];
        [self presentViewController:vc animated:NO completion:nil];
        
    }
    
    
}

- (IBAction)registerButtonClicked:(id)sender {
    
    
    
}

@end
