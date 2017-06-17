//
//  AppLauncher.m
//  WikiPro
//
//  Created by Minhaz on 16/06/17.
//  Copyright © 2017 iqtech. All rights reserved.
//

#import "AppLauncher.h"
#import "Utility.h"

@implementation AppLauncher

// shared instance
+ (AppLauncher *)sharedInstance {
    static AppLauncher *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[AppLauncher alloc] init];
    });
    return instance;
}

@end
