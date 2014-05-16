//
//  _hdLocalNotification.h
//  threehd
//
//  Created by Rafael Assis on 5/16/14.
//  Copyright (c) 2014 Simples. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum {
    _hdNotificationStatusRunning,
    _hdNotificationStatusIdle
} _hdNotificationStatus;

@interface _hdLocalNotification : NSObject

@property (assign, nonatomic) _hdNotificationStatus notificationStatus;

@property(strong, nonatomic) UILocalNotification * notification;

@property(assign, nonatomic) NSInteger timeInSeconds;

- (id)initWithTimeInSecond:(NSInteger) timeInSeconds;

- (void) scheduleNotification;
- (void) unScheduleNotification;

@end
