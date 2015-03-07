//
//  AddItemViewController.m
//  Assignment 2
//
//  Created by John Chen on 3/4/15.
//  Copyright (c) 2015 John Chen. All rights reserved.
//

#import "AddItemViewController.h"
#import "LoginEntry.h"
#import "ViewController.h"

@interface AddItemViewController ()
@property (weak, nonatomic) IBOutlet UITextField *websiteField;
@property (weak, nonatomic) IBOutlet UITextField *usernameField;
@property (weak, nonatomic) IBOutlet UITextField *passwordField;
@property (weak, nonatomic) IBOutlet UITextField *countField;

@end

@implementation AddItemViewController
LoginEntry *login;
- (IBAction)createButton:(id)sender {
    login = [[LoginEntry alloc] init];
    login.website = [self.websiteField text];
    login.username = [self.usernameField text];
    login.password = [self.passwordField text];
    int currentCount = [self.countField text].intValue;
    login.count = currentCount;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    ViewController *vc = [segue destinationViewController];
    [vc setCurrentLogin: login];
    
}


@end
