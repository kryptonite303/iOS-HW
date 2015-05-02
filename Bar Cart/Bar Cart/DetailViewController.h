//
//  DetailViewController.h
//  Bar Cart
//
//  Created by John Chen on 5/2/15.
//  Copyright (c) 2015 John Chen & Ellen Halpin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end

