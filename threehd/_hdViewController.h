//
//  _hdViewController.h
//  threehd
//
//  Created by Rafael Assis on 5/15/14.
//  Copyright (c) 2014 Simples. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "_hdLocalNotification.h"

@interface _hdViewController : UIViewController

@property (strong, nonatomic) _hdLocalNotification * localNotification;

@property (strong, nonatomic) IBOutlet UILabel * labelTimer;
@property (strong, nonatomic) IBOutlet UIButton * buttonFire;

- (IBAction)buttonFireTapped:(id)sender;

@end
