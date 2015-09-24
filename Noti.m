//
//  Noti.m
//  JSONModel
//
//  Created by shuzhenguo on 14-8-20.
//  Copyright (c) 2014年 shuzhenguo. All rights reserved.
//

#import "Noti.h"

@implementation Noti
- (instancetype)init
{
    self = [super init];
    if (self) {
        //addObserver  是对象，不一定是self
        
        
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(test:) name:NotiName object:nil];
        NSLog(@"alloc");
    }
    return self;
}
- (void)test:(NSNotification *)no
{
    NSLog(@"noti success");
}
- (void)dealloc
{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}
@end
