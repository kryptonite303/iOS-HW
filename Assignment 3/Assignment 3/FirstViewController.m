//
//  FirstViewController.m
//  Assignment 3
//
//  Created by John Chen on 3/7/15.
//  Copyright (c) 2015 John Chen. All rights reserved.
//

#import "FirstViewController.h"
#import "AppDelegate.h"
#import <AudioToolbox/AudioToolbox.h>
#import <AVFoundation/AVFoundation.h>
#import "Suit.h"

@interface FirstViewController ()
{
    AVAudioPlayer *_audioPlayer;
}
@property (weak, nonatomic) IBOutlet UIPickerView *myPicker;
@property int suit;
@property int value;
@end

@implementation FirstViewController

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return 2;
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    AppDelegate *delegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    if (component == 0) {
        return [delegate.suits count];
    } else {
        return [delegate.values count];
    }
}

-(UIView *)pickerView:(UIPickerView *)pickerView viewForRow:(NSInteger)row forComponent:
(NSInteger)component reusingView:(UIView *)view {
    AppDelegate *delegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    if (component == 0) {
        UIImage *img = [UIImage imageNamed:[NSString stringWithFormat:@"%d.png", (int)row]];
        UIImageView *temp = [[UIImageView alloc] initWithImage:img];
        temp.frame = CGRectMake(20, 20, 20, 20);
        UIView *tmpView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 60, 60)];
        [tmpView insertSubview:temp atIndex:0];
        return tmpView;
    } else {
        UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(40, 40, 80, 40)];
        [label setText:delegate.values[row]];
        return label;
    }
}

-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
    [_audioPlayer play];
    NSInteger firstComponentRow = [self.myPicker selectedRowInComponent:0];
    NSInteger secondComponentRow = [self.myPicker selectedRowInComponent:1];
    AppDelegate *delegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    switch (firstComponentRow) {
        case 0:
            self.suit = 0;
            delegate.suit = @"Diamond";
            break;
        case 1:
            self.suit = 1;
            delegate.suit = @"Club";
            break;
        case 2:
            self.suit = 2;
            delegate.suit = @"Heart";
            break;
        case 3:
            self.suit = 3;
            delegate.suit = @"Spade";
            break;
        default:
            break;
    }
    switch (secondComponentRow) {
        case 0:
            self.value = 0;
            delegate.value = @"Ace";
            break;
        case 1:
            self.value = 1;
            delegate.value = @"Two";
            break;
        case 2:
            self.value = 2;
            delegate.value = @"Three";
            break;
        case 3:
            self.value = 3;
            delegate.value = @"Four";
            break;
        case 4:
            self.value = 4;
            delegate.value = @"Five";
            break;
        case 5:
            self.value = 5;
            delegate.value = @"Six";
            break;
        case 6:
            self.value = 6;
            delegate.value = @"Seven";
            break;
        case 7:
            self.value = 7;
            delegate.value = @"Eight";
            break;
        case 8:
            self.value = 8;
            delegate.value = @"Nine";
            break;
        case 9:
            self.value = 9;
            delegate.value = @"Ten";
            break;
        case 10:
            self.value = 10;
            delegate.value = @"Jack";
            break;
        case 11:
            self.value = 11;
            delegate.value = @"Queen";
            break;
        case 12:
            self.value = 12;
            delegate.value = @"King";
            break;
        default:
            break;
    }
    delegate.selected = self.suit * 13 + self.value;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    srand (time(NULL));
    AppDelegate *delegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    delegate.tries = 0;
    int chosenCard = rand() % 52;
    delegate.card = chosenCard;
    delegate.value = @"Ace";
    delegate.suit = @"Diamond";
    int randomSuit = chosenCard / 13;
    int randomValue = chosenCard % 13;
    switch (randomSuit) {
        case 0:
            delegate.correctSuitString = @"Diamond";
            break;
        case 1:
            delegate.correctSuitString = @"Club";
            break;
        case 2:
            delegate.correctSuitString = @"Heart";
            break;
        case 3:
            delegate.correctSuitString = @"Spade";
            break;
        default:
            break;
    }
    switch (randomValue) {
        case 0:
            delegate.correctValueString = @"Ace";
            break;
        case 1:
            delegate.correctValueString = @"Two";
            break;
        case 2:
            delegate.correctValueString = @"Three";
            break;
        case 3:
            delegate.correctValueString = @"Four";
            break;
        case 4:
            delegate.correctValueString = @"Five";
            break;
        case 5:
            delegate.correctValueString = @"Six";
            break;
        case 6:
            delegate.correctValueString = @"Seven";
            break;
        case 7:
            delegate.correctValueString = @"Eight";
            break;
        case 8:
            delegate.correctValueString = @"Nine";
            break;
        case 9:
            delegate.correctValueString = @"Ten";
            break;
        case 10:
            delegate.correctValueString = @"Jack";
            break;
        case 11:
            delegate.correctValueString = @"Queen";
            break;
        case 12:
            delegate.correctValueString = @"King";
            break;
        default:
            break;
    }
    self.suit = 0;
    self.value = 0;
    
    delegate.suits = @[@"Diamond", @"Club", @"Heart", @"Spade"];
    delegate.values = @[@"Ace", @"2", @"3", @"4", @"5", @"6", @"7", @"8", @"9", @"10", @"Jack", @"Queen", @"King"];
    NSString *path = [NSString stringWithFormat:@"%@/mouseclick.wav", [[NSBundle mainBundle] resourcePath]];
    NSURL *url = [NSURL fileURLWithPath:path];
    _audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
