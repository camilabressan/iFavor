//
//  LoginViewController.h
//  iFavor
//
//  Created by Camila Bressan on 15/11/16.
//  Copyright © 2016 Camila Bressan. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface LoginViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIView *loginBoxView;
@property (weak, nonatomic) IBOutlet UITextField *emailTextView;
@property (weak, nonatomic) IBOutlet UITextField *passwordTextView;
@property (weak, nonatomic) IBOutlet UIButton *enterButton;
@property (weak, nonatomic) IBOutlet UIButton *registerButton;
@property (weak, nonatomic) IBOutlet UIButton *loginWithFacebookButton;
@property (nonatomic) NSMutableDictionary *userData;


@end
