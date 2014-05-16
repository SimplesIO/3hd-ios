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
- (void) updateButtonFireStatus;

@end

@implementation _hdViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self setLocalNotification:[[_hdLocalNotification alloc] initWithTimeInSecond:5]];
    [self localizeIt];
    [self updateButtonFireStatus];
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(reloadTable)
                                                 name:@"NotificaitonComming"
                                               object:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) localizeIt{
    [[self labelTimer] setText:NSLocalizedString(@"mainViewController_timeLabel", nil)];
}

- (IBAction)buttonFireTapped:(id)sender {
    [[self localNotification] notificationStatus] == _hdNotificationStatusIdle ? [[self localNotification] scheduleNotification]:[[self localNotification] unScheduleNotification];
    [self updateButtonFireStatus];
    
}

- (void) updateButtonFireStatus{
    if([[self localNotification] notificationStatus] == _hdNotificationStatusIdle){
        [[self buttonFire] setTitle:NSLocalizedString(@"mainViewController_buttonFireIdle", nil) forState:UIControlStateNormal];
    }else{
        [[self buttonFire] setTitle:NSLocalizedString(@"mainViewController_buttonFireRunning", nil) forState:UIControlStateNormal];
    }
}

- (void) reloadTable{
    [[self localNotification] unScheduleNotification];
    [self updateButtonFireStatus];
}

@end
