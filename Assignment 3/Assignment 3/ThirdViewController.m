//
//  ThirdViewController.m
//  Assignment 3
//
//  Created by John Chen on 3/7/15.
//  Copyright (c) 2015 John Chen. All rights reserved.
//

#import "ThirdViewController.h"
#import "AppDelegate.h"

@interface ThirdViewController ()
@property (weak, nonatomic) IBOutlet UILabel *message;
@property (weak, nonatomic) IBOutlet UIButton *button;

@end

@implementation ThirdViewController
- (IBAction)sure:(id)sender {
    AppDelegate *delegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    NSString *s = [NSString stringWithFormat:@"%@ of %@\n", delegate.correctSuitString, delegate.correctValueString];
    [self.message setText:s];
    [self.button setTitle:@"LOSER!!!" forState:UIControlStateNormal];
}
-(void)viewWillAppear:(BOOL)animated {
    

}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
