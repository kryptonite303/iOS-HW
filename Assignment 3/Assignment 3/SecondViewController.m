//
//  SecondViewController.m
//  Assignment 3
//
//  Created by John Chen on 3/7/15.
//  Copyright (c) 2015 John Chen. All rights reserved.
//

#import "SecondViewController.h"
#import "AppDelegate.h"
#import <AudioToolbox/AudioToolbox.h>
#import <AVFoundation/AVFoundation.h>
@interface SecondViewController ()
{
    AVAudioPlayer *_audioPlayer;
}
@property (weak, nonatomic) IBOutlet UILabel *bestScore;
@property (weak, nonatomic) IBOutlet UILabel *cardName;
@property (weak, nonatomic) IBOutlet UILabel *answer;
@property (weak, nonatomic) IBOutlet UILabel *tries;
@end

@implementation SecondViewController
-(void)viewWillAppear:(BOOL)animated {
    AppDelegate *delegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    NSUserDefaults *score = [NSUserDefaults standardUserDefaults];
    NSObject *object = [score objectForKey:@"SCORE"];
    delegate.tries++;
    if (object == nil) {
        [self.bestScore setText:@"No best score"];
    }
    [self.tries setText:[NSString stringWithFormat:@"Number of tries: %d", delegate.tries]];
    NSString *selectedValue = delegate.value;
    NSString *selectedSuit = delegate.suit;
    NSString *text = [NSString stringWithFormat:@"You picked: %@ of %@", selectedSuit, selectedValue];
    [self.cardName setText:text];
    
    if (delegate.card == delegate.selected) {
        [self.answer setText:@"Your ESP is on point!"];
        [_audioPlayer play];
        if (object == nil) {
            [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:delegate.tries] forKey:@"SCORE"];
        } else if ([[score objectForKey:@"SCORE"] integerValue] > delegate.tries) {
            [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:delegate.tries] forKey:@"SCORE"];
        }
        [self.bestScore setText:[NSString stringWithFormat:@"%ld", (long)[[score objectForKey:@"SCORE"] integerValue]]];
    } else {
        AppDelegate *delegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
        [self.answer setText:@"Try again!"];
    }
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSString *path = [NSString stringWithFormat:@"%@/success.mp3", [[NSBundle mainBundle] resourcePath]];
    NSURL *url = [NSURL fileURLWithPath:path];
    _audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
