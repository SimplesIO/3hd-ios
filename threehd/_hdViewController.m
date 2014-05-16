//
//  _hdViewController.m
//  threehd
//
//  Created by Rafael Assis on 5/15/14.
//  Copyright (c) 2014 Simples. All rights reserved.
//

#import "_hdViewController.h"

@interface _hdViewController ()

- (void) localizeIt;

@end

@implementation _hdViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self localizeIt];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) localizeIt{
    
    [[self labelTimer] setText:NSLocalizedString(@"3hd.mainViewController.timeLabel", nil)];

}

- (IBAction)buttonFireTapped:(id)sender {
    
    UILocalNotification* localNotification = [[UILocalNotification alloc] init];
    localNotification.fireDate = [NSDate dateWithTimeIntervalSinceNow:5];
    localNotification.alertBody = @"Eat Something!";
    localNotification.timeZone = [NSTimeZone defaultTimeZone];
    [[UIApplication sharedApplication] scheduleLocalNotification:localNotification];
    
}

@end
