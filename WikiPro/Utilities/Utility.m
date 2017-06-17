//
//  Utility.m
//  WikiPro
//
//  Created by Minhaz on 17/06/17.
//  Copyright © 2017 iqtech. All rights reserved.
//

#import "Utility.h"

@implementation Utility

// shared instance
+ (Utility *)sharedInstance {
    static Utility *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[Utility alloc] init];
    });
    return instance;
}

#define kKeyLogin   @"kKeyLogin"
- (void)setLogin:(BOOL)value
{
    NSUserDefaults *def = [NSUserDefaults standardUserDefaults];
    [def setBool:value forKey:kKeyLogin];
    [def synchronize];
}

- (BOOL)isLoggedIn
{
    BOOL value = NO;
    NSUserDefaults *def = [NSUserDefaults standardUserDefaults];
    if ([def objectForKey:kKeyLogin]) {
        return [def boolForKey:kKeyLogin];
    }
    return value;
}

@end
