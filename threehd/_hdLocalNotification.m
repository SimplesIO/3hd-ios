//
//  _hdLocalNotification.m
//  threehd
//
//  Created by Rafael Assis on 5/16/14.
//  Copyright (c) 2014 Simples. All rights reserved.
//

#import "_hdLocalNotification.h"

@implementation _hdLocalNotification

- (id)initWithTimeInSecond:(NSInteger) timeInSeconds
{
    self = [super init];
    if (self) {
        [self setTimeInSeconds:timeInSeconds];
        [self setNotificationStatus:_hdNotificationStatusIdle];
    }
    return self;
}

- (void) scheduleNotification{
    [self setNotificationStatus:_hdNotificationStatusRunning];
    
    [self setNotification:[[UILocalNotification alloc] init]];
    [self notification].fireDate = [NSDate dateWithTimeIntervalSinceNow:[self timeInSeconds]];
    [self notification].alertBody = NSLocalizedString(@"mainViewController_pushMessage", nil);
    [self notification].timeZone = [NSTimeZone defaultTimeZone];
    
    [[UIApplication sharedApplication] scheduleLocalNotification:[self notification]];
}

- (void) unScheduleNotification{
    [self setNotificationStatus:_hdNotificationStatusIdle];
    
    [[UIApplication sharedApplication] cancelLocalNotification:[self notification]];
    [self setNotification:nil];
}

@end
