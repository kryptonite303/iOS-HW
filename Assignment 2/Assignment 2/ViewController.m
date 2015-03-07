//
//  ViewController.m
//  Assignment 2
//
//  Created by John Chen on 2/27/15.
//  Copyright (c) 2015 John Chen. All rights reserved.
//

#import "ViewController.h"
#import "LoginEntry.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *websiteField;
@property (weak, nonatomic) IBOutlet UITextField *usernameField;
@property (weak, nonatomic) IBOutlet UITextField *passwordField;
@property (weak, nonatomic) IBOutlet UITextField *countField;
@property (weak, nonatomic) IBOutlet UIButton *forwardButt;
@property (weak, nonatomic) IBOutlet UIButton *backwardButt;
@property (weak, nonatomic) IBOutlet UISlider *mySlider;

@end

@implementation ViewController
NSMutableArray *myArray;
int currentIndex;
LoginEntry *newLogin;

- (void) setCurrentLogin:(LoginEntry*)newLog {
    newLogin = newLog;
    [myArray addObject:newLogin];
    int count = myArray.count;
    NSLog(@"Array size: %d", count);
}

- (IBAction)incCount:(id)sender {
    NSString *field = [[self countField] text];
    int increaseCount = [field intValue] + 1;
    NSString *newCount = [NSString stringWithFormat:@"%d", increaseCount];
    [self.countField setText:newCount];
    LoginEntry *current = myArray[currentIndex];
    current.count = increaseCount;
}

- (IBAction)forwardButton:(id)sender {
    
        if (currentIndex == myArray.count - 2) {
            [self forwardButt].enabled = NO;
        }
        [self backwardButt].enabled = YES;
        currentIndex++;
    NSLog(@"Current index: %i", currentIndex);
    NSLog(@"Current size: %i", myArray.count);
        LoginEntry *currentLogin = myArray[currentIndex];
        [self.websiteField setText:currentLogin.website];
        [self.usernameField setText:currentLogin.username];
        [self.passwordField setText:currentLogin.password];
        [self.countField setText:[NSString stringWithFormat:@"%d", currentLogin.count]];
    
}
- (IBAction)backwardButton:(id)sender {
        if (currentIndex == 1) {
            [self backwardButt].enabled = NO;
        }
        [self forwardButt].enabled = YES;
        currentIndex--;
        LoginEntry *currentLogin = myArray[currentIndex];
        [self.websiteField setText:currentLogin.website];
        [self.usernameField setText:currentLogin.username];
        [self.passwordField setText:currentLogin.password];
        [self.countField setText:[NSString stringWithFormat:@"%d", currentLogin.count]];
    
}
- (IBAction)slider:(id)sender {
    currentIndex = [self mySlider].value;
    LoginEntry *currentLogin = myArray[currentIndex];
    [self.websiteField setText:currentLogin.website];
    [self.usernameField setText:currentLogin.username];
    [self.passwordField setText:currentLogin.password];
    [self.countField setText:[NSString stringWithFormat:@"%d", currentLogin.count]];
}




- (void)loadView {
    [super loadView];
    [self backwardButt].enabled = NO;
    // Do any additional setup after loading the view, typically from a nib.
    if (myArray == nil) {
        LoginEntry *frank = [[LoginEntry alloc] init];
        LoginEntry *dracu = [[LoginEntry alloc] init];
        LoginEntry *wazow = [[LoginEntry alloc] init];
        LoginEntry *katem = [[LoginEntry alloc] init];
        LoginEntry *chocu = [[LoginEntry alloc] init];
        frank.website = @"Gmail";
        dracu.website = @"Yahoo";
        wazow.website = @"NYU";
        katem.website = @"Amazon";
        chocu.website = @"AOL";
        frank.username = @"Frankenstein";
        dracu.username = @"Dracula";
        wazow.username = @"Wazowski";
        katem.username = @"Kate Monster";
        chocu.username = @"Chocula";
        frank.password = @"greenaboutyou";
        dracu.password = @"biteouttheapple";
        wazow.password = @"Sulley1549";
        katem.password = @"Monstersorri";
        chocu.password = @"bad!!teeth";
        frank.count = 12;
        dracu.count = 14;
        wazow.count = 89;
        katem.count = 14;
        chocu.count = 0;
        myArray = [NSMutableArray arrayWithObjects:frank, dracu, wazow, katem, chocu, nil];
        currentIndex = 0;
        
        [self.websiteField setText:frank.website];
        [self.usernameField setText:frank.username];
        [self.passwordField setText:frank.password];
        [self.countField setText:[NSString stringWithFormat:@"%d", frank.count]];
         
    }
    [self mySlider].minimumValue = 0;
    [self mySlider].maximumValue = myArray.count-1;
    LoginEntry *currentLogin = myArray[currentIndex];
    [self.websiteField setText:currentLogin.website];
    [self.usernameField setText:currentLogin.username];
    [self.passwordField setText:currentLogin.password];
    [self.countField setText:[NSString stringWithFormat:@"%d", currentLogin.count]];

}

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
